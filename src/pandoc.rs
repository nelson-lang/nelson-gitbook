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

use anyhow::{bail, Context, Result};
use walkdir::WalkDir;

use crate::tools::{command_path, PdfEngine};

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
                [
                    "--pdf-engine-opt=--enable-local-file-access",
                    "--pdf-engine-opt=--javascript-delay",
                    "--pdf-engine-opt=100",
                    "--pdf-engine-opt=--no-stop-slow-scripts",
                    "--pdf-engine-opt=--disable-smart-shrinking",
                    "--pdf-engine-opt=--zoom",
                    "--pdf-engine-opt=0.95",
                    "--pdf-engine-opt=--margin-top",
                    "--pdf-engine-opt=15mm",
                    "--pdf-engine-opt=--margin-bottom",
                    "--pdf-engine-opt=15mm",
                    "--pdf-engine-opt=--margin-left",
                    "--pdf-engine-opt=15mm",
                    "--pdf-engine-opt=--margin-right",
                    "--pdf-engine-opt=15mm",
                    "--pdf-engine-opt=--footer-center",
                    "--pdf-engine-opt=Page [page] of [toPage]",
                    "--pdf-engine-opt=--footer-font-size",
                    "--pdf-engine-opt=9",
                ]
                .into_iter()
                .map(str::to_string),
            );
        }
        PdfEngine::Weasyprint => {
            args.push("--pdf-engine=weasyprint".to_string());
        }
    }

    args.extend(
        [
            "--metadata=title:Nelson documentation".to_string(),
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
