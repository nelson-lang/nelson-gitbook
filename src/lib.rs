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
pub mod config;
pub mod errors;
pub mod files;
pub mod markdown;
pub mod pandoc;
pub mod tools;

use std::fs;
use std::path::{Path, PathBuf};

use anyhow::{bail, Context, Result};
use walkdir::WalkDir;

use crate::assets::AssetProcessor;
use crate::config::{BuildMode, Config, Logger, SingleBuild};
use crate::files::{build_anchor_map, read_file_list, sort_files, AnchorMap};
use crate::markdown::{transform_markdown, TransformContext};
use crate::tools::{detect_pdf_engine, detect_svg_converter};

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

    let svg_converter = detect_svg_converter();
    match &svg_converter {
        Some(converter) if converter.use_inkscape => {
            logger.info(format!(
                "Using Inkscape for SVG->PNG conversion. New syntax: {}",
                converter.inkscape_new_syntax
            ));
        }
        _ => {
            logger.info("Inkscape not found; will use ImageMagick (magick) for SVG->PNG conversion")
        }
    }

    let pdf_engine = detect_pdf_engine()?;
    logger.info(format!("Using {} as pdf-engine", pdf_engine.name()));

    let temp_markdown = temp_markdown_path(&build.output_file);
    if temp_markdown.exists() {
        let _ = fs::remove_file(&temp_markdown);
    }

    let converted_dir = tempfile::Builder::new()
        .prefix("nelson_pdf_images_")
        .tempdir()
        .context("failed to create temporary image conversion directory")?;
    logger.verbose(format!(
        "Temporary image conversion dir: {}",
        converted_dir.path().display()
    ));

    let mut processor = AssetProcessor::new(
        converted_dir.path().to_path_buf(),
        svg_converter,
        config.inline_png_as_data_uri,
        logger,
    );

    let combined = build_combined_markdown(&sorted_files, &anchor_map, &mut processor, logger)?;

    fs::write(&temp_markdown, combined)
        .with_context(|| format!("failed to write {}", temp_markdown.display()))?;

    let resource_paths = pandoc::resource_paths(&build.markdown_dir)?;
    logger.info(format!(
        "Resource paths configured: {} directories",
        resource_paths.len()
    ));

    if config.dry_run {
        logger.info("Dry run: skipping Pandoc execution");
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
        if !config.keep_temp {
            let _ = fs::remove_file(&temp_markdown);
        }
        return Ok(());
    }

    logger.info("Running Pandoc on combined markdown...");

    pandoc::run_pandoc(
        &pdf_engine,
        &resource_paths,
        &temp_markdown,
        &build.output_file,
    )?;

    if config.keep_temp {
        logger.info(format!(
            "Keeping temporary markdown: {}",
            temp_markdown.display()
        ));
        logger.info(format!(
            "Keeping temporary image directory: {}",
            converted_dir.keep().display()
        ));
    } else {
        let _ = fs::remove_file(&temp_markdown);
    }

    pandoc::verify_pdf(&build.output_file)?;
    logger.info(format!(
        "SUCCESS: PDF generated: {}",
        build.output_file.display()
    ));
    Ok(())
}

pub fn build_combined_markdown(
    sorted_files: &[PathBuf],
    anchor_map: &AnchorMap,
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
        };
        let content = transform_markdown(content, &ctx, processor)?;
        combined.push_str(&content);
        combined.push_str("\n\n<div style='page-break-after: always;'></div>\n\n");
    }
    Ok(combined)
}

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

        let combined =
            build_combined_markdown(&sorted, &anchors, &mut processor, Logger::new(false))?;

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
