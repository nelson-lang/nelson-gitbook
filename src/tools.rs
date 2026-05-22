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
use std::process::Command;

use anyhow::{bail, Result};
use regex::Regex;

#[derive(Debug, Clone)]
pub struct SvgConverter {
    pub use_inkscape: bool,
    pub inkscape_new_syntax: bool,
}

#[derive(Debug, Clone, PartialEq, Eq)]
pub enum PdfEngine {
    Wkhtmltopdf(PathBuf),
    Weasyprint,
}

impl PdfEngine {
    pub fn name(&self) -> &'static str {
        match self {
            Self::Wkhtmltopdf(_) => "wkhtmltopdf",
            Self::Weasyprint => "weasyprint",
        }
    }

    pub fn engine_arg(&self) -> String {
        match self {
            Self::Wkhtmltopdf(path) => path.to_string_lossy().to_string(),
            Self::Weasyprint => "weasyprint".to_string(),
        }
    }
}

pub fn detect_svg_converter() -> Option<SvgConverter> {
    if command_path("inkscape").is_none() {
        return None;
    }

    let version = Command::new("inkscape").arg("--version").output();
    let inkscape_new_syntax = match version {
        Ok(output) => {
            let stdout = String::from_utf8_lossy(&output.stdout);
            let stderr = String::from_utf8_lossy(&output.stderr);
            let text = format!("{stdout}{stderr}");
            if text.trim().is_empty() {
                true
            } else if let Some(captures) = Regex::new(r"Inkscape\s+([0-9]+)\.")
                .unwrap()
                .captures(&text)
            {
                captures
                    .get(1)
                    .and_then(|m| m.as_str().parse::<u32>().ok())
                    .map(|major| major >= 1)
                    .unwrap_or(true)
            } else {
                true
            }
        }
        Err(_) => true,
    };

    Some(SvgConverter {
        use_inkscape: true,
        inkscape_new_syntax,
    })
}

pub fn detect_pdf_engine() -> Result<PdfEngine> {
    if let Some(path) = env::var_os("WKHTMLTOPDF_PATH").map(PathBuf::from) {
        if path.exists() {
            return Ok(PdfEngine::Wkhtmltopdf(path));
        }
    }

    for candidate in [
        r"C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe",
        r"C:\Program Files (x86)\wkhtmltopdf\bin\wkhtmltopdf.exe",
        r"C:\WindowsTools\wkhtmltox\bin\wkhtmltopdf.exe",
    ] {
        let path = PathBuf::from(candidate);
        if path.exists() {
            return Ok(PdfEngine::Wkhtmltopdf(path));
        }
    }

    if let Some(path) = command_path("wkhtmltopdf") {
        return Ok(PdfEngine::Wkhtmltopdf(path));
    }

    if command_path("weasyprint").is_some() {
        return Ok(PdfEngine::Weasyprint);
    }

    bail!(
        "No supported PDF engine found. Please install wkhtmltopdf (recommended) or weasyprint and ensure it is in PATH."
    );
}

pub fn command_path(command: &str) -> Option<PathBuf> {
    let path = Path::new(command);
    if path.components().count() > 1 && path.exists() {
        return Some(path.to_path_buf());
    }

    let path_var = env::var_os("PATH")?;
    let extensions = executable_extensions();

    for dir in env::split_paths(&path_var) {
        for ext in &extensions {
            let candidate = dir.join(format!("{command}{ext}"));
            if candidate.is_file() {
                return Some(candidate);
            }
        }
    }
    None
}

fn executable_extensions() -> Vec<String> {
    if cfg!(windows) {
        let pathext = env::var("PATHEXT").unwrap_or_else(|_| ".COM;.EXE;.BAT;.CMD".to_string());
        let mut exts = vec![String::new()];
        exts.extend(pathext.split(';').map(|ext| ext.to_ascii_lowercase()));
        exts
    } else {
        vec![String::new()]
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use std::fs;
    use std::sync::{Mutex, OnceLock};
    use tempfile::tempdir;

    #[test]
    fn wkhtmltopdf_engine_args_use_path() {
        let engine = PdfEngine::Wkhtmltopdf(PathBuf::from("C:/wkhtmltopdf.exe"));
        assert_eq!(engine.name(), "wkhtmltopdf");
        assert!(engine.engine_arg().contains("wkhtmltopdf"));
    }

    #[test]
    fn command_path_finds_command_on_path() -> Result<()> {
        let _guard = env_lock().lock().unwrap();
        let dir = tempdir()?;
        let exe = fake_command(dir.path(), "nelson-tool", "")?;
        let old_path = env::var_os("PATH");
        env::set_var("PATH", dir.path());

        let found = command_path("nelson-tool");

        restore_env("PATH", old_path);
        assert_eq!(found, Some(exe));
        Ok(())
    }

    #[test]
    fn detect_pdf_engine_prefers_env_path() -> Result<()> {
        let _guard = env_lock().lock().unwrap();
        let dir = tempdir()?;
        let wk = fake_command(dir.path(), "wkhtmltopdf", "")?;
        let old_wk = env::var_os("WKHTMLTOPDF_PATH");
        env::set_var("WKHTMLTOPDF_PATH", &wk);

        let engine = detect_pdf_engine()?;

        restore_env("WKHTMLTOPDF_PATH", old_wk);
        assert_eq!(engine, PdfEngine::Wkhtmltopdf(wk));
        Ok(())
    }

    #[test]
    fn detect_svg_converter_parses_inkscape_version() -> Result<()> {
        let _guard = env_lock().lock().unwrap();
        let dir = tempdir()?;
        fake_command(dir.path(), "inkscape", "Inkscape 1.3")?;
        let old_path = env::var_os("PATH");
        env::set_var("PATH", dir.path());

        let converter = detect_svg_converter().expect("expected fake inkscape");

        restore_env("PATH", old_path);
        assert!(converter.use_inkscape);
        assert!(converter.inkscape_new_syntax);
        Ok(())
    }

    fn env_lock() -> &'static Mutex<()> {
        static LOCK: OnceLock<Mutex<()>> = OnceLock::new();
        LOCK.get_or_init(|| Mutex::new(()))
    }

    fn restore_env(key: &str, value: Option<std::ffi::OsString>) {
        if let Some(value) = value {
            env::set_var(key, value);
        } else {
            env::remove_var(key);
        }
    }

    fn fake_command(dir: &Path, name: &str, output: &str) -> Result<PathBuf> {
        #[cfg(windows)]
        {
            let path = dir.join(format!("{name}.cmd"));
            fs::write(&path, format!("@echo off\r\necho {output}\r\n"))?;
            Ok(path)
        }
        #[cfg(not(windows))]
        {
            use std::os::unix::fs::PermissionsExt;
            let path = dir.join(name);
            fs::write(&path, format!("#!/usr/bin/env sh\necho '{output}'\n"))?;
            let mut perms = fs::metadata(&path)?.permissions();
            perms.set_mode(0o755);
            fs::set_permissions(&path, perms)?;
            Ok(path)
        }
    }
}
