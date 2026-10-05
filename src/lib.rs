//=============================================================================
// Copyright (c) 2026-present Allan CORNET (Nelson)
//=============================================================================
// This file is part of Nelson.
//=============================================================================
// LICENCE_BLOCK_BEGIN
// SPDX-License-Identifier: LGPL-3.0-or-later
// LICENCE_BLOCK_END
//=============================================================================
pub mod config;
pub mod typst_engine;

use std::path::Path;
use std::time::Instant;

use anyhow::{bail, Context, Result};

use crate::config::{BuildMode, Config, Logger};

pub fn run(config: Config) -> Result<()> {
    let logger = Logger::new(config.verbose);
    match &config.mode {
        BuildMode::Single {
            main_typ,
            output_file,
        } => build_pdf(main_typ, output_file, logger),
        BuildMode::Languages {
            root_dir,
            languages,
        } => {
            for language in languages {
                let Some(main_typ) = typst_engine::language_main(root_dir, language) else {
                    bail!(
                        "no Typst sources for language '{language}': {} not found (run buildhelptypst in Nelson first)",
                        root_dir
                            .join("typst")
                            .join(language)
                            .join("main.typ")
                            .display()
                    );
                };
                let output_file = root_dir.join(format!("nelson-{language}.pdf"));
                logger.info(format!("Building manual for language: {language}"));
                build_pdf(&main_typ, &output_file, logger)?;
            }
            Ok(())
        }
    }
}

pub fn build_pdf(main_typ: &Path, output_file: &Path, logger: Logger) -> Result<()> {
    let started = Instant::now();
    let stats = typst_engine::compile_pdf(main_typ, output_file, logger)?;
    verify_pdf(output_file)?;
    logger.info(format!(
        "SUCCESS: PDF generated: {} ({} pages, {} warning(s), total {:.1}s)",
        output_file.display(),
        stats.pages,
        stats.warnings,
        started.elapsed().as_secs_f64()
    ));
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
    fn verify_pdf_rejects_tiny_file() -> Result<()> {
        let dir = tempdir()?;
        let pdf = dir.path().join("tiny.pdf");
        fs::write(&pdf, b"%PDF")?;
        let err = verify_pdf(&pdf).unwrap_err();
        assert!(err.to_string().contains("too small"));
        Ok(())
    }

    #[test]
    fn language_mode_fails_without_generated_sources() {
        let dir = tempdir().unwrap();
        let config = Config {
            mode: BuildMode::Languages {
                root_dir: dir.path().to_path_buf(),
                languages: vec!["en".to_string()],
            },
            verbose: false,
        };
        let err = run(config).unwrap_err();
        assert!(err.to_string().contains("buildhelptypst"), "{err}");
    }
}
