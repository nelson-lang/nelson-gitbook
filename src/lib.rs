//=============================================================================
// Copyright (c) 2026-present Allan CORNET (Nelson)
//=============================================================================
// This file is part of Nelson.
//=============================================================================
// LICENCE_BLOCK_BEGIN
// SPDX-License-Identifier: LGPL-3.0-or-later
// LICENCE_BLOCK_END
//=============================================================================
pub mod assets;
pub mod chunks;
pub mod config;
pub mod emoji;
pub mod errors;
pub mod files;
pub mod markdown;
pub mod pandoc;
pub mod tools;

use std::fs;
use std::path::{Path, PathBuf};
use std::time::Instant;

use anyhow::{bail, Context, Result};
use walkdir::WalkDir;

use crate::assets::AssetProcessor;
use crate::chunks::{ChunkPlan, MAX_FILES_PER_CHUNK};
use crate::config::{BuildMode, Config, Logger, SingleBuild};
use crate::emoji::EmojiResolver;
use crate::files::{build_anchor_map, full_path, read_file_list, sort_files, AnchorMap};
use crate::markdown::{file_uri, transform_markdown, TransformContext};
use crate::tools::{command_path, detect_pdf_engine, detect_svg_converter, PdfEngine};

pub fn run(config: Config) -> Result<()> {
    let logger = Logger::new(config.verbose);
    match &config.mode {
        BuildMode::Single(build) => run_single_build(build, &config, logger),
        BuildMode::Languages {
            root_dir,
            languages,
        } => {
            for language in languages {
                let build = SingleBuild {
                    markdown_dir: root_dir.join("markdown").join(language),
                    output_file: root_dir.join(format!("nelson-{language}.pdf")),
                    file_list: None,
                };
                logger.info(format!("Building manual for language: {language}"));
                run_single_build(&build, &config, logger)?;
            }
            Ok(())
        }
    }
}

pub fn run_single_build(build: &SingleBuild, config: &Config, logger: Logger) -> Result<()> {
    if !build.markdown_dir.exists() {
        bail!(
            "markdown directory not found: {}",
            build.markdown_dir.display()
        );
    }

    let files = if let Some(file_list) = &build.file_list {
        logger.info(format!("Reading file list from: {}", file_list.display()));
        read_file_list(file_list)
            .with_context(|| format!("failed to read file list: {}", file_list.display()))?
    } else {
        logger.info(format!(
            "Generating file list from: {}",
            build.markdown_dir.display()
        ));
        collect_markdown_files(&build.markdown_dir)?
    };

    logger.info(format!("Total files: {}", files.len()));
    if files.is_empty() {
        bail!("file list is empty for {}", build.markdown_dir.display());
    }

    logger.verbose("Sample file list entries (first 10):");
    for file in files.iter().take(10) {
        logger.verbose(format!("  {}", file.display()));
    }

    let sorted_files = sort_files(&build.markdown_dir, &files, logger)?;
    logger.info(format!(
        "Filtered files for PDF (excluding main SUMMARY.md): {} files",
        sorted_files.len()
    ));

    let anchor_map = build_anchor_map(&build.markdown_dir, &sorted_files)?;

    let started = Instant::now();
    let svg_converter = detect_svg_converter();
    let fallback = match &svg_converter {
        Some(converter) if converter.use_inkscape => {
            format!("Inkscape (new syntax: {})", converter.inkscape_new_syntax)
        }
        _ if command_path("magick").is_some() => "ImageMagick (magick)".to_string(),
        _ => "sanitized SVG copies".to_string(),
    };
    logger.info(format!(
        "Using built-in resvg for SVG->PNG conversion (fallback: {fallback})"
    ));

    let pdf_engine = detect_pdf_engine()?;
    logger.info(format!("Using {} as pdf-engine", pdf_engine.name()));

    let mut emoji = EmojiResolver::new(emoji_dir());
    match emoji.dir() {
        Some(dir) => logger.info(format!("Using local emoji images from {}", dir.display())),
        None => {
            logger.info("No local emoji directory (theme/emoji); emoji will be kept as plain text")
        }
    }

    let converted_dir = tempfile::Builder::new()
        .prefix("nelson_pdf_images_")
        .tempdir()
        .context("failed to create temporary image conversion directory")?;
    logger.verbose(format!(
        "Temporary image conversion dir: {}",
        converted_dir.path().display()
    ));
    let chunk_dir = tempfile::Builder::new()
        .prefix("nelson_pdf_chunks_")
        .tempdir()
        .context("failed to create temporary chunk directory")?;

    let mut processor = AssetProcessor::new(
        converted_dir.path().to_path_buf(),
        svg_converter,
        config.inline_png_as_data_uri,
        logger,
    );

    // wkhtmltopdf receives one HTML object per chapter chunk; other engines
    // get the whole manual as a single document.
    let chunked = matches!(pdf_engine, PdfEngine::Wkhtmltopdf(_));
    let plan = ChunkPlan::new(
        &build.markdown_dir,
        &sorted_files,
        chunk_dir.path().to_path_buf(),
    );
    if chunked {
        logger.info(format!(
            "Chapter chunks: {} (max {MAX_FILES_PER_CHUNK} files per chunk)",
            plan.len()
        ));
    }

    let mut total_bytes = 0usize;
    let mut single_document = String::new();
    for (index, files) in plan.chunks.iter().enumerate() {
        let combined = build_combined_markdown(
            files,
            &anchor_map,
            chunked.then_some(&plan),
            index,
            &mut emoji,
            &mut processor,
            logger,
        )?;
        total_bytes += combined.len();
        if chunked {
            let path = plan.markdown_path(index);
            fs::write(&path, &combined)
                .with_context(|| format!("failed to write {}", path.display()))?;
        } else {
            single_document.push_str(&combined);
        }
    }
    logger.info(format!(
        "Combined markdown ready: {total_bytes} bytes in {} chunk(s), {} images converted, {:.1}s elapsed",
        plan.len(),
        processor.converted_count,
        started.elapsed().as_secs_f64()
    ));
    report_missing_emoji(&emoji, logger);

    let resource_paths = pandoc::resource_paths(&build.markdown_dir)?;
    logger.info(format!(
        "Resource paths configured: {} directories",
        resource_paths.len()
    ));
    let css_uri = file_uri(&full_path(Path::new("pdf-style-v2.css"))?);

    let temp_markdown = temp_markdown_path(&build.output_file);
    if !chunked {
        fs::write(&temp_markdown, &single_document)
            .with_context(|| format!("failed to write {}", temp_markdown.display()))?;
    }

    let keep_temp_dirs = |converted_dir: tempfile::TempDir, chunk_dir: tempfile::TempDir| {
        logger.info(format!(
            "Keeping temporary image directory: {}",
            converted_dir.keep().display()
        ));
        logger.info(format!(
            "Keeping temporary chunk directory: {}",
            chunk_dir.keep().display()
        ));
    };

    if config.dry_run {
        logger.info("Dry run: skipping Pandoc and PDF engine execution");
        if chunked {
            for index in 0..plan.len() {
                logger.verbose(format!(
                    "chunk {index:03}: {} files -> {}",
                    plan.chunks[index].len(),
                    plan.markdown_path(index).display()
                ));
            }
        } else {
            logger.info(format!(
                "Combined markdown generated: {}",
                temp_markdown.display()
            ));
            for arg in pandoc::build_pandoc_args(
                &pdf_engine,
                &resource_paths,
                &temp_markdown,
                &build.output_file,
            ) {
                logger.verbose(format!("pandoc arg: {arg}"));
            }
        }
        if config.keep_temp {
            keep_temp_dirs(converted_dir, chunk_dir);
        } else if !chunked {
            let _ = fs::remove_file(&temp_markdown);
        }
        return Ok(());
    }

    let render_started = Instant::now();
    match &pdf_engine {
        PdfEngine::Wkhtmltopdf(wkhtmltopdf) => {
            pandoc::run_pandoc_html_chunks(&plan, &resource_paths, &css_uri, logger)?;
            logger.info(format!(
                "Pandoc finished in {:.1}s",
                render_started.elapsed().as_secs_f64()
            ));
            let html_files: Vec<PathBuf> = (0..plan.len()).map(|i| plan.html_path(i)).collect();
            logger.info(format!(
                "Running wkhtmltopdf on {} HTML objects...",
                html_files.len()
            ));
            let wk_started = Instant::now();
            pandoc::run_wkhtmltopdf(wkhtmltopdf, &html_files, &build.output_file)?;
            logger.info(format!(
                "wkhtmltopdf finished in {:.1}s",
                wk_started.elapsed().as_secs_f64()
            ));
        }
        PdfEngine::Weasyprint => {
            logger.info("Running Pandoc on combined markdown...");
            pandoc::run_pandoc(
                &pdf_engine,
                &resource_paths,
                &temp_markdown,
                &build.output_file,
            )?;
            logger.info(format!(
                "Pandoc + {} finished in {:.1}s",
                pdf_engine.name(),
                render_started.elapsed().as_secs_f64()
            ));
        }
    }

    if config.keep_temp {
        if !chunked {
            logger.info(format!(
                "Keeping temporary markdown: {}",
                temp_markdown.display()
            ));
        }
        keep_temp_dirs(converted_dir, chunk_dir);
    } else if !chunked {
        let _ = fs::remove_file(&temp_markdown);
    }

    pandoc::verify_pdf(&build.output_file)?;
    logger.info(format!(
        "SUCCESS: PDF generated: {} (total {:.1}s)",
        build.output_file.display(),
        started.elapsed().as_secs_f64()
    ));
    Ok(())
}

pub fn build_combined_markdown(
    sorted_files: &[PathBuf],
    anchor_map: &AnchorMap,
    chunks: Option<&ChunkPlan>,
    chunk_index: usize,
    emoji: &mut EmojiResolver,
    processor: &mut AssetProcessor,
    logger: Logger,
) -> Result<String> {
    let mut combined = String::new();
    for file in sorted_files {
        logger.verbose(format!("Processing: {}", file.display()));
        let file_dir = file
            .parent()
            .map(Path::to_path_buf)
            .context("markdown file has no parent directory")?;
        let content = fs::read_to_string(file)
            .with_context(|| format!("failed to read markdown file: {}", file.display()))?;
        let ctx = TransformContext {
            file,
            file_dir: &file_dir,
            anchor_map,
            chunks,
            chunk_index,
        };
        let content = transform_markdown(content, &ctx, processor, emoji)?;
        combined.push_str(&content);
        combined.push_str(PAGE_BREAK);
    }
    // A trailing page break makes wkhtmltopdf emit a blank page at the end of
    // every chunk (each HTML object already starts on a new page) and at the
    // end of the manual.
    if let Some(trimmed) = combined.strip_suffix(PAGE_BREAK) {
        combined.truncate(trimmed.len());
        combined.push('\n');
    }
    Ok(combined)
}

const PAGE_BREAK: &str = "\n\n<div style='page-break-after: always;'></div>\n\n";

pub fn collect_markdown_files(markdown_dir: &Path) -> Result<Vec<PathBuf>> {
    let mut files = Vec::new();
    for entry in WalkDir::new(markdown_dir) {
        let entry = entry?;
        if entry.file_type().is_file()
            && entry
                .path()
                .extension()
                .and_then(|ext| ext.to_str())
                .is_some_and(|ext| ext.eq_ignore_ascii_case("md"))
        {
            files.push(entry.path().to_path_buf());
        }
    }
    Ok(files)
}

/// Local Twemoji PNG directory (`theme/emoji/<codepoints>.png` under the
/// current directory), if it exists.
fn emoji_dir() -> Option<PathBuf> {
    let dir = std::env::current_dir().ok()?.join("theme").join("emoji");
    dir.is_dir().then_some(dir)
}

/// Lists emoji sequences that were kept as text because no local PNG exists.
fn report_missing_emoji(emoji: &EmojiResolver, logger: Logger) {
    let missing = emoji.missing();
    if missing.is_empty() {
        return;
    }
    let dir = emoji
        .dir()
        .map(|dir| dir.display().to_string())
        .unwrap_or_else(|| "theme/emoji".to_string());
    logger.info(format!(
        "WARNING: {} emoji sequence(s) have no local PNG in {dir} and were kept as text:",
        missing.len()
    ));
    for (name, entry) in missing {
        logger.info(format!(
            "  {}  {name}.png  ({} occurrence(s))",
            entry.sequence, entry.count
        ));
    }
    logger.info("Download them with, for each name:");
    logger.info(
        "  curl -sSL -o theme/emoji/<name>.png https://cdn.jsdelivr.net/gh/twitter/twemoji@latest/assets/72x72/<name>.png",
    );
}

fn temp_markdown_path(output_file: &Path) -> PathBuf {
    let stem = output_file
        .file_stem()
        .and_then(|stem| stem.to_str())
        .unwrap_or("combined");
    PathBuf::from(format!("temp_{stem}.md"))
}

#[cfg(test)]
mod tests {
    use super::*;
    use tempfile::tempdir;

    #[test]
    fn builds_combined_markdown_without_running_pandoc() -> Result<()> {
        let dir = tempdir()?;
        let readme = dir.path().join("README.md");
        let target = dir.path().join("target.md");
        fs::write(&readme, "# Home\n\n[Target](target.md)")?;
        fs::write(&target, "# Target")?;

        let sorted = vec![readme.clone(), target.clone()];
        let anchors = build_anchor_map(dir.path(), &sorted)?;
        let converted = tempdir()?;
        let mut processor = AssetProcessor::new(
            converted.path().to_path_buf(),
            None,
            true,
            Logger::new(false),
        );

        let combined = build_combined_markdown(
            &sorted,
            &anchors,
            None,
            0,
            &mut EmojiResolver::new(None),
            &mut processor,
            Logger::new(false),
        )?;

        assert!(combined.contains("<a id='nelson-readme' name='nelson-readme'></a>"));
        assert!(combined.contains("<a href='#nelson-target'>Target</a>"));
        assert!(combined.contains("page-break-after: always"));
        Ok(())
    }

    #[test]
    fn collect_markdown_files_finds_nested_md_files() -> Result<()> {
        let dir = tempdir()?;
        fs::create_dir_all(dir.path().join("nested"))?;
        fs::write(dir.path().join("README.md"), "")?;
        fs::write(dir.path().join("nested").join("a.md"), "")?;
        fs::write(dir.path().join("nested").join("a.txt"), "")?;

        let files = collect_markdown_files(dir.path())?;
        assert_eq!(files.len(), 2);
        Ok(())
    }

    #[test]
    fn dry_run_generates_then_removes_temp_markdown_without_pandoc() -> Result<()> {
        let dir = tempdir()?;
        fs::write(dir.path().join("README.md"), "# Home")?;
        let fake_wk = dir.path().join(if cfg!(windows) {
            "wkhtmltopdf.exe"
        } else {
            "wkhtmltopdf"
        });
        fs::write(&fake_wk, "")?;
        let old_wk = std::env::var_os("WKHTMLTOPDF_PATH");
        std::env::set_var("WKHTMLTOPDF_PATH", &fake_wk);

        let build = SingleBuild {
            markdown_dir: dir.path().to_path_buf(),
            output_file: dir.path().join("out.pdf"),
            file_list: None,
        };
        let config = Config {
            mode: BuildMode::Single(build.clone()),
            inline_png_as_data_uri: true,
            dry_run: true,
            keep_temp: false,
            verbose: false,
        };

        run_single_build(&build, &config, Logger::new(false))?;

        restore_env("WKHTMLTOPDF_PATH", old_wk);
        assert!(!Path::new("temp_out.md").exists());
        Ok(())
    }

    fn restore_env(key: &str, value: Option<std::ffi::OsString>) {
        if let Some(value) = value {
            std::env::set_var(key, value);
        } else {
            std::env::remove_var(key);
        }
    }
}
