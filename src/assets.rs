//=============================================================================
// Copyright (c) 2026-present Allan CORNET (Nelson)
//=============================================================================
// This file is part of Nelson.
//=============================================================================
// LICENCE_BLOCK_BEGIN
// SPDX-License-Identifier: LGPL-3.0-or-later
// LICENCE_BLOCK_END
//=============================================================================
use std::collections::HashSet;
use std::fs;
use std::path::{Path, PathBuf};
use std::process::Command;

use anyhow::Result;
use base64::Engine;
use regex::Regex;

use crate::config::Logger;
use crate::markdown::file_uri;
use crate::tools::SvgConverter;

#[derive(Debug)]
pub struct AssetProcessor {
    converted_dir: PathBuf,
    svg_converter: Option<SvgConverter>,
    inline_png_as_data_uri: bool,
    logger: Logger,
    pub converted_count: usize,
}

impl AssetProcessor {
    pub fn new(
        converted_dir: PathBuf,
        svg_converter: Option<SvgConverter>,
        inline_png_as_data_uri: bool,
        logger: Logger,
    ) -> Self {
        Self {
            converted_dir,
            svg_converter,
            inline_png_as_data_uri,
            logger,
            converted_count: 0,
        }
    }

    pub fn convert_svg_references(&mut self, content: &str, file_dir: &Path) -> Result<String> {
        let mut out = content.to_string();
        for svg_ref in collect_refs(
            content,
            r"!\[[^\]]*\]\(([^)]+?\.svg(?:\?[^)]*)?)\)",
            r#"<img[^>]*src="([^"]+?\.svg(?:\?[^"]*)?)"[^>]*>"#,
        ) {
            if let Some(png_path) = self.convert_svg_to_png(&svg_ref, file_dir) {
                let png_uri = file_uri(&png_path);
                out = out.replace(&svg_ref, &png_uri);
                self.converted_count += 1;
                self.logger.verbose(format!(
                    "Replaced SVG reference with PNG: {svg_ref} -> {png_uri}"
                ));
            } else {
                self.logger
                    .verbose(format!("Skipped conversion for: {svg_ref}"));
            }
        }
        Ok(out)
    }

    pub fn copy_png_references(&mut self, content: &str, file_dir: &Path) -> Result<String> {
        let mut out = content.to_string();
        for png_ref in collect_refs(
            content,
            r"!\[[^\]]*\]\(([^)]+?\.png(?:\?[^)]*)?)\)",
            r#"<img[^>]*src="([^"]+?\.png(?:\?[^"]*)?)"[^>]*>"#,
        ) {
            let Some(png_local) = resolve_local_ref(&png_ref, file_dir) else {
                continue;
            };
            let png_local = strip_query(&png_local);
            if !png_local.exists() {
                self.logger.info(format!(
                    "Warning: PNG file not found, skipping copy: {}",
                    png_local.display()
                ));
                continue;
            }

            let dest_path = self.hashed_dest_path(&png_local);
            if !dest_path.exists() {
                if let Err(err) = fs::copy(&png_local, &dest_path) {
                    self.logger.info(format!("Error copying PNG file: {err}"));
                    continue;
                }
            }

            if self.inline_png_as_data_uri {
                match fs::read(&dest_path) {
                    Ok(bytes) => {
                        let b64 = base64::engine::general_purpose::STANDARD.encode(bytes);
                        let data_uri = format!("data:image/png;base64,{b64}");
                        out = out.replace(&png_ref, &data_uri);
                        self.converted_count += 1;
                        self.logger.verbose(format!(
                            "Inlined PNG as data URI: {png_ref} -> [data:image/png;base64,...]"
                        ));
                    }
                    Err(err) => {
                        self.logger.info(format!("Error inlining PNG file: {err}"));
                        let png_uri = file_uri(&dest_path);
                        out = out.replace(&png_ref, &png_uri);
                        self.logger.verbose(format!(
                            "Fell back to file URI for PNG: {png_ref} -> {png_uri}"
                        ));
                    }
                }
            } else {
                let png_uri = file_uri(&dest_path);
                out = out.replace(&png_ref, &png_uri);
                self.converted_count += 1;
                self.logger
                    .verbose(format!("Copied PNG as file URI: {png_ref} -> {png_uri}"));
            }
        }
        Ok(out)
    }

    fn convert_svg_to_png(&self, svg_ref: &str, file_dir: &Path) -> Option<PathBuf> {
        let svg_local = resolve_local_ref(svg_ref, file_dir)?;
        let svg_local = strip_query(&svg_local);
        if !svg_local.exists() {
            self.logger.info(format!(
                "Warning: SVG file not found, skipping conversion: {}",
                svg_local.display()
            ));
            return None;
        }

        let png_path = self.hashed_dest_path(&svg_local);
        if png_path.exists() {
            return Some(png_path);
        }

        let Some(converter) = &self.svg_converter else {
            return self
                .run_magick(&svg_local, &png_path)
                .or_else(|| self.sanitize_svg_for_pdf(&svg_local));
        };

        let converted = if converter.use_inkscape {
            self.run_inkscape(&svg_local, &png_path, converter.inkscape_new_syntax)
        } else {
            self.run_magick(&svg_local, &png_path)
        };
        converted.or_else(|| self.sanitize_svg_for_pdf(&svg_local))
    }

    fn run_inkscape(&self, svg: &Path, png: &Path, new_syntax: bool) -> Option<PathBuf> {
        let mut command = Command::new("inkscape");
        if new_syntax {
            command
                .arg(svg)
                .arg(format!("--export-filename={}", png.display()));
        } else {
            command
                .arg(format!("--export-png={}", png.display()))
                .arg(svg);
        }
        self.logger.verbose(format!("Running {:?}", command));
        match command.status() {
            Ok(status) if status.success() && png.exists() => Some(png.to_path_buf()),
            Ok(status) => {
                self.logger
                    .info(format!("Error converting SVG: Inkscape exit {status}"));
                None
            }
            Err(err) => {
                self.logger.info(format!("Error converting SVG: {err}"));
                None
            }
        }
    }

    fn run_magick(&self, svg: &Path, png: &Path) -> Option<PathBuf> {
        if crate::tools::command_path("magick").is_none() {
            return None;
        }
        let mut command = Command::new("magick");
        command
            .arg(svg)
            .arg("-background")
            .arg("white")
            .arg("-flatten")
            .arg("-resize")
            .arg("1200x")
            .arg(png);
        self.logger.verbose(format!("Running {:?}", command));
        match command.status() {
            Ok(status) if status.success() && png.exists() => Some(png.to_path_buf()),
            Ok(status) => {
                self.logger
                    .info(format!("Error converting SVG: magick exit {status}"));
                None
            }
            Err(err) => {
                self.logger.info(format!("Error converting SVG: {err}"));
                None
            }
        }
    }

    fn sanitize_svg_for_pdf(&self, svg: &Path) -> Option<PathBuf> {
        let sanitized_path = self.hashed_svg_dest_path(svg);
        if sanitized_path.exists() {
            return Some(sanitized_path);
        }

        let Ok(content) = fs::read_to_string(svg) else {
            self.logger.info(format!(
                "Error reading SVG for PDF sanitizing: {}",
                svg.display()
            ));
            return None;
        };
        let sanitized = sanitize_svg_root_overflow(&content);
        match fs::write(&sanitized_path, sanitized) {
            Ok(()) => {
                self.logger.verbose(format!(
                    "Sanitized SVG for PDF: {} -> {}",
                    svg.display(),
                    sanitized_path.display()
                ));
                Some(sanitized_path)
            }
            Err(err) => {
                self.logger
                    .info(format!("Error writing sanitized SVG: {err}"));
                None
            }
        }
    }

    fn hashed_dest_path(&self, source: &Path) -> PathBuf {
        let stem = source
            .file_stem()
            .and_then(|stem| stem.to_str())
            .unwrap_or("image");
        let hash = format!("{:x}", md5::compute(source.to_string_lossy().as_bytes()));
        self.converted_dir
            .join(format!("{}-{}.png", stem, &hash[..8]))
    }

    fn hashed_svg_dest_path(&self, source: &Path) -> PathBuf {
        let stem = source
            .file_stem()
            .and_then(|stem| stem.to_str())
            .unwrap_or("image");
        let hash = format!("{:x}", md5::compute(source.to_string_lossy().as_bytes()));
        self.converted_dir
            .join(format!("{}-{}-pdf.svg", stem, &hash[..8]))
    }
}

pub(crate) fn sanitize_svg_root_overflow(content: &str) -> String {
    let Some(svg_start) = content.find("<svg") else {
        return content.to_string();
    };
    let Some(relative_end) = content[svg_start..].find('>') else {
        return content.to_string();
    };
    let svg_end = svg_start + relative_end;
    let mut svg_tag = content[svg_start..svg_end].to_string();

    if !Regex::new(r#"\boverflow\s*="#).unwrap().is_match(&svg_tag) {
        svg_tag.push_str(r#" overflow="hidden""#);
    }
    if !Regex::new(r#"\bpreserveAspectRatio\s*="#)
        .unwrap()
        .is_match(&svg_tag)
    {
        svg_tag.push_str(r#" preserveAspectRatio="xMidYMid meet""#);
    }
    if Regex::new(r#"\bstyle\s*="#).unwrap().is_match(&svg_tag) {
        let style_re = Regex::new(r#"style\s*=\s*"([^"]*)""#).unwrap();
        svg_tag = style_re
            .replace(&svg_tag, |captures: &regex::Captures| {
                let style = captures.get(1).unwrap().as_str();
                if style
                    .split(';')
                    .any(|rule| rule.trim_start().starts_with("overflow:"))
                {
                    captures.get(0).unwrap().as_str().to_string()
                } else {
                    format!(r#"style="overflow:hidden; {style}""#)
                }
            })
            .to_string();
    } else {
        svg_tag.push_str(r#" style="overflow:hidden""#);
    }

    format!(
        "{}{}{}",
        &content[..svg_start],
        svg_tag,
        &content[svg_end..]
    )
}

pub fn collect_refs(content: &str, markdown_pattern: &str, html_pattern: &str) -> Vec<String> {
    let md_re = Regex::new(markdown_pattern).unwrap();
    let html_re = Regex::new(html_pattern).unwrap();
    let mut seen = HashSet::new();
    let mut refs = Vec::new();

    for captures in md_re.captures_iter(content) {
        let value = captures.get(1).unwrap().as_str().to_string();
        if seen.insert(value.clone()) {
            refs.push(value);
        }
    }
    for captures in html_re.captures_iter(content) {
        let value = captures.get(1).unwrap().as_str().to_string();
        if seen.insert(value.clone()) {
            refs.push(value);
        }
    }
    refs
}

fn resolve_local_ref(reference: &str, file_dir: &Path) -> Option<PathBuf> {
    if reference.starts_with("http://")
        || reference.starts_with("https://")
        || reference.starts_with("//")
        || reference.starts_with("data:")
    {
        return None;
    }
    if let Some(path) = reference.strip_prefix("file:///") {
        return Some(path_from_file_uri_path(path));
    }
    let path = PathBuf::from(reference);
    if is_windows_absolute(reference) || path.is_absolute() {
        Some(path)
    } else {
        Some(file_dir.join(path))
    }
}

fn path_from_file_uri_path(path: &str) -> PathBuf {
    let decoded = percent_decode(path);
    if cfg!(windows) {
        PathBuf::from(decoded.replace('/', "\\"))
    } else {
        PathBuf::from(format!("/{decoded}"))
    }
}

fn percent_decode(value: &str) -> String {
    let bytes = value.as_bytes();
    let mut out = Vec::with_capacity(bytes.len());
    let mut i = 0;
    while i < bytes.len() {
        if bytes[i] == b'%' && i + 2 < bytes.len() {
            if let Ok(hex) = std::str::from_utf8(&bytes[i + 1..i + 3]) {
                if let Ok(byte) = u8::from_str_radix(hex, 16) {
                    out.push(byte);
                    i += 3;
                    continue;
                }
            }
        }
        out.push(bytes[i]);
        i += 1;
    }
    String::from_utf8_lossy(&out).to_string()
}

fn strip_query(path: &Path) -> PathBuf {
    PathBuf::from(path.to_string_lossy().split('?').next().unwrap_or_default())
}

fn is_windows_absolute(value: &str) -> bool {
    value.len() >= 3 && value.as_bytes()[1] == b':' && value.as_bytes()[2] == b'\\'
}

#[cfg(test)]
mod tests {
    use super::*;
    use tempfile::tempdir;

    #[test]
    fn collects_svg_refs_with_query_string() {
        let refs = collect_refs(
            r#"![A](a.svg?x=1)<img src="b.svg?y=2">"#,
            r"!\[[^\]]*\]\(([^)]+?\.svg(?:\?[^)]*)?)\)",
            r#"<img[^>]*src="([^"]+?\.svg(?:\?[^"]*)?)"[^>]*>"#,
        );
        assert_eq!(refs, vec!["a.svg?x=1", "b.svg?y=2"]);
    }

    #[test]
    fn png_is_inlined_by_default() -> Result<()> {
        let dir = tempdir()?;
        let img = dir.path().join("a.png");
        fs::write(&img, b"png")?;
        let converted = tempdir()?;
        let mut processor = AssetProcessor::new(
            converted.path().to_path_buf(),
            None,
            true,
            Logger::new(false),
        );
        let out = processor.copy_png_references("![A](a.png)", dir.path())?;
        assert!(out.contains("data:image/png;base64,"));
        Ok(())
    }

    #[test]
    fn png_can_be_copied_as_file_uri() -> Result<()> {
        let dir = tempdir()?;
        let img = dir.path().join("a.png");
        fs::write(&img, b"png")?;
        let converted = tempdir()?;
        let mut processor = AssetProcessor::new(
            converted.path().to_path_buf(),
            None,
            false,
            Logger::new(false),
        );
        let out = processor.copy_png_references("![A](a.png)", dir.path())?;
        assert!(out.contains("file:///"));
        assert!(!out.contains("data:image/png;base64,"));
        Ok(())
    }

    #[test]
    fn percent_decodes_file_uri_paths() {
        let decoded = percent_decode("tmp/a%20b.png");
        assert_eq!(decoded, "tmp/a b.png");
    }

    #[test]
    fn remote_and_data_refs_are_ignored() {
        assert!(resolve_local_ref("https://example.com/a.png", Path::new(".")).is_none());
        assert!(resolve_local_ref("data:image/png;base64,aaa", Path::new(".")).is_none());
    }

    #[test]
    fn missing_png_reference_is_left_unchanged() -> Result<()> {
        let dir = tempdir()?;
        let converted = tempdir()?;
        let mut processor = AssetProcessor::new(
            converted.path().to_path_buf(),
            None,
            true,
            Logger::new(false),
        );

        let out = processor.copy_png_references("![A](missing.png)", dir.path())?;

        assert_eq!(out, "![A](missing.png)");
        assert_eq!(processor.converted_count, 0);
        Ok(())
    }

    #[test]
    fn sanitizes_svg_root_to_avoid_pdf_scrollbars() {
        let out = sanitize_svg_root_overflow(r#"<svg width="10"><rect/></svg>"#);

        assert!(out.contains(r#"overflow="hidden""#));
        assert!(out.contains(r#"style="overflow:hidden""#));
        assert!(out.contains(r#"preserveAspectRatio="xMidYMid meet""#));
    }

    #[test]
    fn duplicate_png_references_are_processed_once_but_replaced_everywhere() -> Result<()> {
        let dir = tempdir()?;
        fs::write(dir.path().join("a.png"), b"png")?;
        let converted = tempdir()?;
        let mut processor = AssetProcessor::new(
            converted.path().to_path_buf(),
            None,
            true,
            Logger::new(false),
        );

        let out = processor.copy_png_references("![A](a.png) ![B](a.png)", dir.path())?;

        assert_eq!(processor.converted_count, 1);
        assert_eq!(out.matches("data:image/png;base64,").count(), 2);
        Ok(())
    }
}
