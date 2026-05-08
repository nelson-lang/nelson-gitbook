//=============================================================================
// Copyright (c) 2026-present Allan CORNET (Nelson)
//=============================================================================
// This file is part of Nelson.
//=============================================================================
// LICENCE_BLOCK_BEGIN
// SPDX-License-Identifier: LGPL-3.0-or-later
// LICENCE_BLOCK_END
//=============================================================================
use std::env;
use std::path::{Path, PathBuf};

use anyhow::{bail, Context, Result};
use clap::Parser;

#[derive(Debug, Parser)]
#[command(author, version, about = "Build Nelson GitBook PDFs with Pandoc")]
pub struct Cli {
    #[arg(long = "markdown-dir")]
    pub markdown_dir: Option<PathBuf>,

    #[arg(long = "output-file")]
    pub output_file: Option<PathBuf>,

    #[arg(long = "file-list")]
    pub file_list: Option<PathBuf>,

    #[arg(long, value_delimiter = ',', help = "Languages to build, e.g. en,fr")]
    pub languages: Vec<String>,

    #[arg(long = "dry-run")]
    pub dry_run: bool,

    #[arg(long = "keep-temp")]
    pub keep_temp: bool,

    #[arg(long)]
    pub verbose: bool,
}

impl Cli {
    pub fn parse_args() -> Self {
        Self::parse()
    }
}

#[derive(Debug, Clone)]
pub struct Config {
    pub mode: BuildMode,
    pub inline_png_as_data_uri: bool,
    pub dry_run: bool,
    pub keep_temp: bool,
    pub verbose: bool,
}

#[derive(Debug, Clone)]
pub enum BuildMode {
    Single(SingleBuild),
    Languages {
        root_dir: PathBuf,
        languages: Vec<String>,
    },
}

#[derive(Debug, Clone)]
pub struct SingleBuild {
    pub markdown_dir: PathBuf,
    pub output_file: PathBuf,
    pub file_list: Option<PathBuf>,
}

impl Config {
    pub fn from_cli(cli: Cli) -> Result<Self> {
        let cwd = env::current_dir().context("failed to read current directory")?;
        let mode = build_mode_from_cli(&cli, &cwd)?;

        Ok(Self {
            mode,
            inline_png_as_data_uri: inline_png_from_env(),
            dry_run: cli.dry_run,
            keep_temp: cli.keep_temp,
            verbose: cli.verbose,
        })
    }
}

fn build_mode_from_cli(cli: &Cli, cwd: &Path) -> Result<BuildMode> {
    if !cli.languages.is_empty() {
        if cli.markdown_dir.is_some() || cli.output_file.is_some() || cli.file_list.is_some() {
            bail!(
                "--languages cannot be combined with --markdown-dir, --output-file, or --file-list"
            );
        }
        return Ok(BuildMode::Languages {
            root_dir: cwd.to_path_buf(),
            languages: cli.languages.clone(),
        });
    }

    let markdown_dir = cli
        .markdown_dir
        .as_ref()
        .context("--markdown-dir is required unless --languages is used")
        .and_then(|path| absolute_path(path, cwd))?;
    let output_file = cli
        .output_file
        .as_ref()
        .context("--output-file is required unless --languages is used")
        .and_then(|path| absolute_path(path, cwd))?;
    let file_list = cli
        .file_list
        .as_ref()
        .map(|path| absolute_path(path, cwd))
        .transpose()?;

    if !markdown_dir.exists() {
        bail!("markdown directory not found: {}", markdown_dir.display());
    }
    if let Some(file_list) = &file_list {
        if !file_list.exists() {
            bail!("file list not found: {}", file_list.display());
        }
    }

    Ok(BuildMode::Single(SingleBuild {
        markdown_dir,
        output_file,
        file_list,
    }))
}

pub fn inline_png_from_env() -> bool {
    match env::var("NELSON_INLINE_PNG") {
        Ok(value) => {
            let lowered = value.to_ascii_lowercase();
            !(lowered == "0" || lowered == "false")
        }
        Err(_) => true,
    }
}

fn absolute_path(path: &Path, cwd: &Path) -> Result<PathBuf> {
    let joined = if path.is_absolute() {
        path.to_path_buf()
    } else {
        cwd.join(path)
    };
    Ok(normalize_lexically(joined))
}

#[derive(Debug, Clone, Copy)]
pub struct Logger {
    verbose: bool,
}

impl Logger {
    pub fn new(verbose: bool) -> Self {
        Self { verbose }
    }

    pub fn info(&self, message: impl AsRef<str>) {
        println!("{}", message.as_ref());
    }

    pub fn verbose(&self, message: impl AsRef<str>) {
        if self.verbose {
            println!("{}", message.as_ref());
        }
    }

    pub fn is_verbose(&self) -> bool {
        self.verbose
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use std::fs;
    use tempfile::tempdir;

    #[test]
    fn normalize_removes_current_and_parent_components() {
        let path = normalize_lexically(PathBuf::from(r"C:\a\.\b\..\c"));
        assert_eq!(path.to_string_lossy().replace('\\', "/"), "C:/a/c");
    }

    #[test]
    fn language_mode_rejects_single_build_options() {
        let cli = Cli {
            markdown_dir: Some(PathBuf::from("markdown/en")),
            output_file: None,
            file_list: None,
            languages: vec!["en".to_string()],
            dry_run: false,
            keep_temp: false,
            verbose: false,
        };
        let err = build_mode_from_cli(&cli, Path::new(".")).unwrap_err();
        assert!(err.to_string().contains("cannot be combined"));
    }

    #[test]
    fn single_mode_accepts_optional_file_list() -> Result<()> {
        let dir = tempdir()?;
        let markdown = dir.path().join("markdown");
        fs::create_dir(&markdown)?;
        let list = dir.path().join("files.txt");
        fs::write(&list, "")?;
        let cli = Cli {
            markdown_dir: Some(markdown.clone()),
            output_file: Some(dir.path().join("out.pdf")),
            file_list: Some(list.clone()),
            languages: vec![],
            dry_run: true,
            keep_temp: true,
            verbose: true,
        };

        let config = Config::from_cli(cli)?;

        match config.mode {
            BuildMode::Single(build) => {
                assert_eq!(build.markdown_dir, markdown);
                assert_eq!(build.file_list, Some(list));
            }
            BuildMode::Languages { .. } => panic!("unexpected language mode"),
        }
        assert!(config.dry_run);
        assert!(config.keep_temp);
        assert!(config.verbose);
        Ok(())
    }

    #[test]
    fn single_mode_requires_markdown_dir() {
        let cli = Cli {
            markdown_dir: None,
            output_file: Some(PathBuf::from("out.pdf")),
            file_list: None,
            languages: vec![],
            dry_run: false,
            keep_temp: false,
            verbose: false,
        };

        let err = build_mode_from_cli(&cli, Path::new(".")).unwrap_err();
        assert!(err.to_string().contains("--markdown-dir is required"));
    }
}

pub fn normalize_lexically(path: PathBuf) -> PathBuf {
    let mut out = PathBuf::new();
    for component in path.components() {
        match component {
            std::path::Component::CurDir => {}
            std::path::Component::ParentDir => {
                out.pop();
            }
            other => out.push(other.as_os_str()),
        }
    }
    out
}
