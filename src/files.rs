//=============================================================================
// Copyright (c) 2026-present Allan CORNET (Nelson)
//=============================================================================
// This file is part of Nelson.
//=============================================================================
// LICENCE_BLOCK_BEGIN
// SPDX-License-Identifier: LGPL-3.0-or-later
// LICENCE_BLOCK_END
//=============================================================================
use std::collections::{HashMap, HashSet};
use std::fs;
use std::path::{Path, PathBuf};

use anyhow::{Context, Result};
use regex::Regex;

use crate::config::{normalize_lexically, Logger};

pub type AnchorMap = HashMap<PathBuf, String>;

pub fn read_file_list(file_list: &Path) -> Result<Vec<PathBuf>> {
    let content = fs::read_to_string(file_list)?;
    Ok(content
        .lines()
        .map(|line| line.trim().trim_start_matches('\u{feff}'))
        .filter(|line| !line.is_empty())
        .map(PathBuf::from)
        .collect())
}

pub fn sort_files(markdown_dir: &Path, files: &[PathBuf], logger: Logger) -> Result<Vec<PathBuf>> {
    let markdown_dir = full_path(markdown_dir)?;
    let main_summary = full_path(&markdown_dir.join("SUMMARY.md"))?;
    let main_readme = full_path(&markdown_dir.join("README.md"))?;
    let summary_order = parse_summary_order(&markdown_dir, logger)?;

    let mut original_order = HashMap::new();
    for (index, file) in files.iter().enumerate() {
        original_order.entry(full_path(file)?).or_insert(index);
    }

    let mut keyed = Vec::with_capacity(files.len());
    for file in files {
        let full = full_path(file)?;
        if same_path(&full, &main_summary) {
            continue;
        }
        let name = full
            .file_name()
            .and_then(|name| name.to_str())
            .unwrap_or_default()
            .to_string();
        let key = sort_key(&full, &name, &main_readme, &summary_order, &original_order);
        keyed.push((key, full));
    }

    keyed.sort_by(|a, b| a.0.cmp(&b.0));
    Ok(keyed.into_iter().map(|(_, file)| file).collect())
}

pub fn parse_summary_order(markdown_dir: &Path, logger: Logger) -> Result<HashMap<PathBuf, usize>> {
    let summary_path = markdown_dir.join("SUMMARY.md");
    let mut order = HashMap::new();
    if !summary_path.exists() {
        return Ok(order);
    }

    logger.info("Parsing SUMMARY.md for file order...");
    let content = fs::read_to_string(&summary_path)
        .with_context(|| format!("failed to read {}", summary_path.display()))?;
    let link_re = Regex::new(r"\[([^\]]+)\]\(([^\)]+\.md)\)").unwrap();

    for captures in link_re.captures_iter(&content) {
        let link_path = captures.get(2).unwrap().as_str();
        let absolute = full_path(&markdown_dir.join(link_path))?;
        if absolute.exists() {
            let index = order.len();
            order.insert(absolute, index);
            logger.verbose(format!("  Order {} : {}", index + 1, link_path));
        }
    }
    logger.info(format!(
        "Found {} file references in SUMMARY.md",
        order.len()
    ));
    Ok(order)
}

fn sort_key(
    full: &Path,
    name: &str,
    main_readme: &Path,
    summary_order: &HashMap<PathBuf, usize>,
    original_order: &HashMap<PathBuf, usize>,
) -> String {
    if same_path(full, main_readme) {
        return format!("{:08}|MAIN_README", 0);
    }
    if name == "getting_started.md" {
        return format!("{:08}|GETTING_STARTED", 1);
    }
    if let Some(index) = summary_order.get(full) {
        return format!("{:08}|SUMMARY", 2 + index);
    }
    if let Some(index) = original_order.get(full) {
        return format!("{:08}|ORIG", 10_000_000 + index);
    }
    format!("{:08}|FALLBACK|{}", 20_000_000, full.display())
}

pub fn build_anchor_map(markdown_dir: &Path, sorted_files: &[PathBuf]) -> Result<AnchorMap> {
    let markdown_dir = full_path(markdown_dir)?;
    let mut anchor_map = HashMap::new();
    let mut seen = HashSet::new();

    for file in sorted_files {
        let full = full_path(file)?;
        let rel = full
            .strip_prefix(&markdown_dir)
            .unwrap_or(&full)
            .to_string_lossy()
            .trim_start_matches(['\\', '/'])
            .to_string();
        let mut slug = slug_from_relative_path(&rel);
        if slug.trim().is_empty() {
            slug = full
                .file_stem()
                .and_then(|stem| stem.to_str())
                .unwrap_or("file")
                .to_string();
        }
        slug = format!("nelson-{}", slug.to_ascii_lowercase());
        let base = slug.clone();
        let mut i = 1;
        while seen.contains(&slug) {
            slug = format!("{base}-{i}");
            i += 1;
        }
        seen.insert(slug.clone());
        anchor_map.insert(full, slug);
    }

    Ok(anchor_map)
}

pub fn slug_from_relative_path(rel: &str) -> String {
    let without_ext = Regex::new(r"(?i)\.md$").unwrap().replace(rel, "");
    let separators = Regex::new(r"[\\/]").unwrap().replace_all(&without_ext, "-");
    let safe = Regex::new(r"[^A-Za-z0-9\-_]")
        .unwrap()
        .replace_all(&separators, "-");
    Regex::new(r"-+")
        .unwrap()
        .replace_all(&safe, "-")
        .to_string()
}

pub fn full_path(path: &Path) -> Result<PathBuf> {
    let path = if path.is_absolute() {
        path.to_path_buf()
    } else {
        std::env::current_dir()?.join(path)
    };
    Ok(normalize_lexically(path))
}

fn same_path(a: &Path, b: &Path) -> bool {
    if cfg!(windows) {
        a.to_string_lossy()
            .eq_ignore_ascii_case(&b.to_string_lossy())
    } else {
        a == b
    }
}

#[cfg(test)]
mod tests {
    use super::*;
    use tempfile::tempdir;

    #[test]
    fn slug_is_stable_from_relative_path() {
        assert_eq!(
            slug_from_relative_path(r"core/functions/my file.md"),
            "core-functions-my-file"
        );
    }

    #[test]
    fn sorts_like_powershell_script_and_excludes_main_summary() -> Result<()> {
        let dir = tempdir()?;
        let root = dir.path();
        fs::write(root.join("README.md"), "# Home")?;
        fs::write(root.join("getting_started.md"), "# Start")?;
        fs::write(root.join("SUMMARY.md"), "- [B](b.md)\n- [A](a.md)\n")?;
        fs::write(root.join("a.md"), "# A")?;
        fs::write(root.join("b.md"), "# B")?;
        fs::write(root.join("z.md"), "# Z")?;

        let files = vec![
            root.join("z.md"),
            root.join("SUMMARY.md"),
            root.join("a.md"),
            root.join("getting_started.md"),
            root.join("README.md"),
            root.join("b.md"),
        ];

        let sorted = sort_files(root, &files, Logger::new(false))?;
        let names: Vec<_> = sorted
            .iter()
            .map(|p| p.file_name().unwrap().to_string_lossy().to_string())
            .collect();
        assert_eq!(
            names,
            vec!["README.md", "getting_started.md", "b.md", "a.md", "z.md"]
        );
        Ok(())
    }

    #[test]
    fn anchor_collisions_get_suffixes() -> Result<()> {
        let dir = tempdir()?;
        let a_dir = dir.path().join("a b");
        let b_dir = dir.path().join("a-b");
        fs::create_dir_all(&a_dir)?;
        fs::create_dir_all(&b_dir)?;
        let a = a_dir.join("c.md");
        let b = b_dir.join("c.md");
        fs::write(&a, "")?;
        fs::write(&b, "")?;

        let map = build_anchor_map(dir.path(), &[a.clone(), b.clone()])?;
        assert_eq!(map.get(&full_path(&a)?).unwrap(), "nelson-a-b-c");
        assert_eq!(map.get(&full_path(&b)?).unwrap(), "nelson-a-b-c-1");
        Ok(())
    }
}
