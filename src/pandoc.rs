//=============================================================================
// Copyright (c) 2026-present Allan CORNET (Nelson)
//=============================================================================
// This file is part of Nelson.
//=============================================================================
// LICENCE_BLOCK_BEGIN
// SPDX-License-Identifier: LGPL-3.0-or-later
// LICENCE_BLOCK_END
//=============================================================================
use std::path::{Path, PathBuf};
use std::process::Command;
use std::sync::atomic::{AtomicUsize, Ordering};
use std::sync::Mutex;

use anyhow::{bail, Context, Result};
use walkdir::WalkDir;

use regex::Regex;

use crate::chunks::ChunkPlan;
use crate::config::Logger;
use crate::tools::{command_path, PdfEngine};

/// wkhtmltopdf options shared by the single-document (Pandoc-driven) path and
/// the chunked path. Internal links stay enabled: the chunked pipeline keeps
/// their resolution cheap by giving wkhtmltopdf one HTML object per chapter.
pub const WKHTMLTOPDF_OPTIONS: &[&str] = &[
    "--enable-local-file-access",
    "--javascript-delay",
    "100",
    "--no-stop-slow-scripts",
    "--load-error-handling",
    "ignore",
    "--load-media-error-handling",
    "ignore",
    "--disable-smart-shrinking",
    "--zoom",
    "0.95",
    "--margin-top",
    "15mm",
    "--margin-bottom",
    "15mm",
    "--margin-left",
    "15mm",
    "--margin-right",
    "15mm",
    "--footer-center",
    "Page [page] of [toPage]",
    "--footer-font-size",
    "9",
];

pub const PDF_TITLE: &str = "Nelson documentation";

pub fn resource_paths(markdown_dir: &Path) -> Result<Vec<PathBuf>> {
    let mut paths = vec![markdown_dir.to_path_buf()];
    for entry in WalkDir::new(markdown_dir).min_depth(1) {
        let entry = entry?;
        if entry.file_type().is_dir() {
            paths.push(entry.path().to_path_buf());
        }
    }
    Ok(paths)
}

pub fn build_pandoc_args(
    engine: &PdfEngine,
    resource_paths: &[PathBuf],
    temp_markdown: &Path,
    output_file: &Path,
) -> Vec<String> {
    let separator = if cfg!(windows) { ";" } else { ":" };
    let resource_path_string = resource_paths
        .iter()
        .map(|path| path.to_string_lossy())
        .collect::<Vec<_>>()
        .join(separator);

    let mut args = vec![format!("--resource-path={resource_path_string}")];

    match engine {
        PdfEngine::Wkhtmltopdf(_) => {
            args.push(format!("--pdf-engine={}", engine.engine_arg()));
            args.extend(
                WKHTMLTOPDF_OPTIONS
                    .iter()
                    .map(|opt| format!("--pdf-engine-opt={opt}")),
            );
        }
        PdfEngine::Weasyprint => {
            args.push("--pdf-engine=weasyprint".to_string());
        }
    }

    args.extend(
        [
            format!("--metadata=title:{PDF_TITLE}"),
            "--from=markdown+emoji".to_string(),
            "--css=pdf-style-v2.css".to_string(),
            "--webtex".to_string(),
            "--syntax-highlighting=pygments".to_string(),
            temp_markdown.to_string_lossy().to_string(),
            "-o".to_string(),
            output_file.to_string_lossy().to_string(),
        ]
        .into_iter(),
    );

    args
}

pub fn run_pandoc(
    engine: &PdfEngine,
    resource_paths: &[PathBuf],
    temp_markdown: &Path,
    output_file: &Path,
) -> Result<()> {
    if !temp_markdown.exists() {
        bail!(
            "Combined markdown file not found: {}",
            temp_markdown.display()
        );
    }
    if command_path("pandoc").is_none() {
        bail!("Pandoc not found on PATH. Please install pandoc and ensure it is in PATH.");
    }

    let args = build_pandoc_args(engine, resource_paths, temp_markdown, output_file);
    let status = Command::new("pandoc")
        .args(&args)
        .status()
        .context("Pandoc execution failed")?;

    if !status.success() {
        bail!("Pandoc execution failed with status: {status}");
    }
    Ok(())
}

/// Pandoc arguments converting one chapter chunk to a standalone HTML file.
/// Only the first chunk carries the visible document title.
pub fn build_pandoc_html_args(
    resource_paths: &[PathBuf],
    css_uri: &str,
    chunk_markdown: &Path,
    chunk_html: &Path,
    first_chunk: bool,
) -> Vec<String> {
    let separator = if cfg!(windows) { ";" } else { ":" };
    let resource_path_string = resource_paths
        .iter()
        .map(|path| path.to_string_lossy())
        .collect::<Vec<_>>()
        .join(separator);
    let title = if first_chunk {
        format!("--metadata=title:{PDF_TITLE}")
    } else {
        format!("--metadata=pagetitle:{PDF_TITLE}")
    };
    vec![
        format!("--resource-path={resource_path_string}"),
        "--from=markdown+emoji".to_string(),
        "--to=html5".to_string(),
        "--standalone".to_string(),
        title,
        format!("--css={css_uri}"),
        "--webtex".to_string(),
        "--syntax-highlighting=pygments".to_string(),
        chunk_markdown.to_string_lossy().to_string(),
        "-o".to_string(),
        chunk_html.to_string_lossy().to_string(),
    ]
}

/// Converts every chunk markdown file to HTML with Pandoc, in parallel.
pub fn run_pandoc_html_chunks(
    plan: &ChunkPlan,
    resource_paths: &[PathBuf],
    css_uri: &str,
    logger: Logger,
) -> Result<()> {
    if command_path("pandoc").is_none() {
        bail!("Pandoc not found on PATH. Please install pandoc and ensure it is in PATH.");
    }
    let threads = std::thread::available_parallelism()
        .map(|n| n.get())
        .unwrap_or(4)
        .clamp(1, 8)
        .min(plan.len().max(1));
    logger.info(format!(
        "Running Pandoc on {} chapter chunks ({threads} parallel processes)...",
        plan.len()
    ));

    let next = AtomicUsize::new(0);
    let failures: Mutex<Vec<String>> = Mutex::new(Vec::new());
    std::thread::scope(|scope| {
        for _ in 0..threads {
            scope.spawn(|| loop {
                let index = next.fetch_add(1, Ordering::SeqCst);
                if index >= plan.len() {
                    break;
                }
                let markdown = plan.markdown_path(index);
                let html = plan.html_path(index);
                let args =
                    build_pandoc_html_args(resource_paths, css_uri, &markdown, &html, index == 0);
                logger.verbose(format!("pandoc {}", args.join(" ")));
                let outcome = Command::new("pandoc").args(&args).output();
                let failure = match outcome {
                    Ok(output) if output.status.success() => {
                        let stderr = String::from_utf8_lossy(&output.stderr);
                        for line in stderr.lines().filter(|l| !l.contains("Deprecated")) {
                            logger.info(format!("pandoc[{index:03}]: {line}"));
                        }
                        match strip_code_line_anchors_in_file(&html) {
                            Ok(removed) => {
                                logger.verbose(format!(
                                    "chunk {index:03}: removed {removed} code line anchors"
                                ));
                                None
                            }
                            Err(err) => Some(format!("chunk {index:03}: {err:#}")),
                        }
                    }
                    Ok(output) => Some(format!(
                        "chunk {index:03}: pandoc exited with {}: {}",
                        output.status,
                        String::from_utf8_lossy(&output.stderr).trim()
                    )),
                    Err(err) => Some(format!("chunk {index:03}: failed to run pandoc: {err}")),
                };
                if let Some(message) = failure {
                    failures.lock().unwrap().push(message);
                }
            });
        }
    });

    let failures = failures.into_inner().unwrap();
    if !failures.is_empty() {
        bail!(
            "Pandoc failed on {} chunk(s):\n{}",
            failures.len(),
            failures.join("\n")
        );
    }
    Ok(())
}

/// Removes the per-line anchors Pandoc emits in highlighted code blocks
/// (`<a href="#cb12-3" aria-hidden="true" tabindex="-1"></a>`).
///
/// wkhtmltopdf treats every `<a href="#...">` as an internal link and runs up
/// to three DOM queries per link on the target document; a chapter with large
/// code listings carries tens of thousands of such anchors, which turned the
/// "Resolving links" phase into the dominant cost of the build.
pub fn strip_code_line_anchors(html: &str) -> (String, usize) {
    let re = Regex::new(r##"<a href="#cb\d+-\d+" aria-hidden="true" tabindex="-1"></a>"##).unwrap();
    let removed = re.find_iter(html).count();
    if removed == 0 {
        return (html.to_string(), 0);
    }
    (re.replace_all(html, "").into_owned(), removed)
}

fn strip_code_line_anchors_in_file(html_path: &Path) -> Result<usize> {
    let html = std::fs::read_to_string(html_path)
        .with_context(|| format!("failed to read {}", html_path.display()))?;
    let (stripped, removed) = strip_code_line_anchors(&html);
    if removed > 0 {
        std::fs::write(html_path, stripped)
            .with_context(|| format!("failed to write {}", html_path.display()))?;
    }
    Ok(removed)
}

/// wkhtmltopdf command line rendering all chunk HTML files into one PDF.
pub fn build_wkhtmltopdf_args(html_files: &[PathBuf], output_file: &Path) -> Vec<String> {
    let mut args: Vec<String> = vec!["--title".to_string(), PDF_TITLE.to_string()];
    args.extend(WKHTMLTOPDF_OPTIONS.iter().map(|opt| opt.to_string()));
    args.extend(
        html_files
            .iter()
            .map(|path| path.to_string_lossy().to_string()),
    );
    args.push(output_file.to_string_lossy().to_string());
    args
}

pub fn run_wkhtmltopdf(
    wkhtmltopdf: &Path,
    html_files: &[PathBuf],
    output_file: &Path,
) -> Result<()> {
    for html in html_files {
        if !html.exists() {
            bail!("chunk HTML not found: {}", html.display());
        }
    }
    let args = build_wkhtmltopdf_args(html_files, output_file);
    let status = Command::new(wkhtmltopdf)
        .args(&args)
        .status()
        .with_context(|| format!("failed to run {}", wkhtmltopdf.display()))?;
    // wkhtmltopdf exits with 1 when some resources failed to load although the
    // PDF was produced (load errors are ignored by option); verify_pdf decides.
    if !status.success() && !output_file.exists() {
        bail!("wkhtmltopdf failed with status: {status}");
    }
    Ok(())
}

pub fn verify_pdf(output_file: &Path) -> Result<()> {
    if !output_file.exists() {
        bail!("PDF file was not created: {}", output_file.display());
    }
    let metadata = output_file
        .metadata()
        .with_context(|| format!("failed to inspect {}", output_file.display()))?;
    if metadata.len() < 1024 {
        bail!(
            "PDF file looks too small ({} bytes): {}",
            metadata.len(),
            output_file.display()
        );
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::*;
    use std::fs;
    use tempfile::tempdir;

    #[test]
    fn wkhtmltopdf_args_match_powershell_script_options() {
        let engine = PdfEngine::Wkhtmltopdf(PathBuf::from("wkhtmltopdf"));
        let args = build_pandoc_args(
            &engine,
            &[PathBuf::from("markdown/en")],
            Path::new("temp_combined.md"),
            Path::new("nelson-en.pdf"),
        );

        assert!(args.contains(&"--pdf-engine=wkhtmltopdf".to_string()));
        for expected in [
            "--pdf-engine-opt=--enable-local-file-access",
            "--pdf-engine-opt=--javascript-delay",
            "--pdf-engine-opt=100",
            "--pdf-engine-opt=--no-stop-slow-scripts",
            "--pdf-engine-opt=--load-error-handling",
            "--pdf-engine-opt=ignore",
            "--pdf-engine-opt=--load-media-error-handling",
            "--pdf-engine-opt=ignore",
            "--pdf-engine-opt=--disable-smart-shrinking",
            "--pdf-engine-opt=--zoom",
            "--pdf-engine-opt=0.95",
            "--pdf-engine-opt=--footer-center",
            "--pdf-engine-opt=Page [page] of [toPage]",
        ] {
            assert!(args.contains(&expected.to_string()), "missing {expected}");
        }
    }

    #[test]
    fn weasyprint_avoids_wkhtmltopdf_flags() {
        let args = build_pandoc_args(
            &PdfEngine::Weasyprint,
            &[PathBuf::from("markdown/en")],
            Path::new("temp_combined.md"),
            Path::new("nelson-en.pdf"),
        );
        assert!(args.contains(&"--pdf-engine=weasyprint".to_string()));
        assert!(!args.contains(&"--pdf-engine-opt=--enable-local-file-access".to_string()));
    }

    #[test]
    fn html_chunk_args_only_title_first_chunk() {
        let first = build_pandoc_html_args(
            &[PathBuf::from("markdown/en")],
            "file:///D:/doc/pdf-style-v2.css",
            Path::new("chunk_000.md"),
            Path::new("chunk_000.html"),
            true,
        );
        assert!(first.contains(&"--metadata=title:Nelson documentation".to_string()));
        assert!(first.contains(&"--to=html5".to_string()));
        assert!(first.contains(&"--standalone".to_string()));
        assert!(first.contains(&"--css=file:///D:/doc/pdf-style-v2.css".to_string()));
        let other = build_pandoc_html_args(
            &[PathBuf::from("markdown/en")],
            "file:///D:/doc/pdf-style-v2.css",
            Path::new("chunk_001.md"),
            Path::new("chunk_001.html"),
            false,
        );
        assert!(other.contains(&"--metadata=pagetitle:Nelson documentation".to_string()));
        assert!(!other.iter().any(|a| a.starts_with("--metadata=title:")));
    }

    #[test]
    fn strips_pandoc_code_line_anchors_only() {
        let html = concat!(
            r##"<span id="cb1-1"><a href="#cb1-1" aria-hidden="true" tabindex="-1"></a>x = 1;</span>"##,
            r##"<a href='#nelson-core-abs'>abs</a>"##,
            r##"<a href="#cb1-2" aria-hidden="true" tabindex="-1"></a>"##,
        );
        let (out, removed) = strip_code_line_anchors(html);
        assert_eq!(removed, 2);
        assert!(!out.contains("cb1-1\" aria-hidden"), "{out}");
        assert!(out.contains(r##"<span id="cb1-1">x = 1;</span>"##), "{out}");
        assert!(out.contains("<a href='#nelson-core-abs'>abs</a>"), "{out}");
    }

    #[test]
    fn wkhtmltopdf_args_keep_internal_links_and_list_all_objects() {
        let args = build_wkhtmltopdf_args(
            &[PathBuf::from("c0.html"), PathBuf::from("c1.html")],
            Path::new("out.pdf"),
        );
        assert!(!args.iter().any(|a| a.contains("disable-internal-links")));
        assert!(args.contains(&"--enable-local-file-access".to_string()));
        assert!(args.contains(&"Page [page] of [toPage]".to_string()));
        let n = args.len();
        assert_eq!(&args[n - 3..], &["c0.html", "c1.html", "out.pdf"]);
    }

    #[test]
    fn resource_paths_includes_nested_directories() -> Result<()> {
        let dir = tempdir()?;
        fs::create_dir_all(dir.path().join("a").join("b"))?;

        let paths = resource_paths(dir.path())?;

        assert!(paths.contains(&dir.path().to_path_buf()));
        assert!(paths.contains(&dir.path().join("a")));
        assert!(paths.contains(&dir.path().join("a").join("b")));
        Ok(())
    }

    #[test]
    fn run_pandoc_reports_missing_combined_markdown() {
        let err = run_pandoc(
            &PdfEngine::Weasyprint,
            &[PathBuf::from(".")],
            Path::new("missing-combined.md"),
            Path::new("out.pdf"),
        )
        .unwrap_err();
        assert!(err.to_string().contains("Combined markdown file not found"));
    }

    #[test]
    fn verify_pdf_rejects_tiny_file() -> Result<()> {
        let dir = tempdir()?;
        let pdf = dir.path().join("tiny.pdf");
        fs::write(&pdf, b"%PDF")?;

        let err = verify_pdf(&pdf).unwrap_err();

        assert!(err.to_string().contains("too small"));
        Ok(())
    }

    #[test]
    fn verify_pdf_accepts_nontrivial_file() -> Result<()> {
        let dir = tempdir()?;
        let pdf = dir.path().join("ok.pdf");
        fs::write(&pdf, vec![b'x'; 2048])?;

        verify_pdf(&pdf)?;

        Ok(())
    }
}
