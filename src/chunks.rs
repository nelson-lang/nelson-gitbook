//=============================================================================
// Copyright (c) 2026-present Allan CORNET (Nelson)
//=============================================================================
// This file is part of Nelson.
//=============================================================================
// LICENCE_BLOCK_BEGIN
// SPDX-License-Identifier: LGPL-3.0-or-later
// LICENCE_BLOCK_END
//=============================================================================
//! Splits the ordered list of markdown files into chapter chunks.
//!
//! wkhtmltopdf re-lays out the whole HTML document for every internal link it
//! resolves, so a single 4000-page document with ~10k links takes hours. When
//! the manual is passed as many smaller HTML objects in one wkhtmltopdf call,
//! each link only costs a re-layout of its own chapter, while cross-object
//! links and global page numbering keep working.
use std::collections::HashMap;
use std::path::{Path, PathBuf};

use crate::markdown::file_uri;

/// Upper bound on the number of markdown files per chunk. Chapters larger than
/// this are split into consecutive chunks (files are already in SUMMARY order).
pub const MAX_FILES_PER_CHUNK: usize = 40;

/// Upper bound on the markdown source size of a chunk. Link resolution in
/// wkhtmltopdf queries the whole DOM of the target object for every link, so
/// very large objects (chapters made of long generated pages) are split.
pub const MAX_BYTES_PER_CHUNK: u64 = 512 * 1024;

#[derive(Debug, Clone)]
pub struct ChunkPlan {
    /// Files of each chunk, in document order.
    pub chunks: Vec<Vec<PathBuf>>,
    /// Chunk index of every file.
    file_chunk: HashMap<PathBuf, usize>,
    /// Directory holding `chunk_NNN.md` / `chunk_NNN.html`.
    dir: PathBuf,
}

impl ChunkPlan {
    pub fn new(markdown_dir: &Path, sorted_files: &[PathBuf], dir: PathBuf) -> Self {
        Self::with_limits(
            markdown_dir,
            sorted_files,
            dir,
            MAX_FILES_PER_CHUNK,
            MAX_BYTES_PER_CHUNK,
        )
    }

    pub fn with_max_files(
        markdown_dir: &Path,
        sorted_files: &[PathBuf],
        dir: PathBuf,
        max_files: usize,
    ) -> Self {
        Self::with_limits(markdown_dir, sorted_files, dir, max_files, u64::MAX)
    }

    pub fn with_limits(
        markdown_dir: &Path,
        sorted_files: &[PathBuf],
        dir: PathBuf,
        max_files: usize,
        max_bytes: u64,
    ) -> Self {
        let max_files = max_files.max(1);
        let mut chunks: Vec<Vec<PathBuf>> = Vec::new();
        let mut current_chapter: Option<String> = None;
        let mut current_bytes = 0u64;

        for file in sorted_files {
            let chapter = chapter_of(markdown_dir, file);
            let size = std::fs::metadata(file).map(|m| m.len()).unwrap_or(0);
            let start_new = match (&current_chapter, chunks.last()) {
                (Some(previous), Some(last)) => {
                    previous != &chapter
                        || last.len() >= max_files
                        || current_bytes + size > max_bytes
                }
                _ => true,
            };
            if start_new {
                chunks.push(Vec::new());
                current_chapter = Some(chapter);
                current_bytes = 0;
            }
            current_bytes += size;
            chunks
                .last_mut()
                .expect("chunk list is never empty here")
                .push(file.clone());
        }

        let mut file_chunk = HashMap::new();
        for (index, files) in chunks.iter().enumerate() {
            for file in files {
                file_chunk.insert(file.clone(), index);
            }
        }

        Self {
            chunks,
            file_chunk,
            dir,
        }
    }

    pub fn len(&self) -> usize {
        self.chunks.len()
    }

    pub fn is_empty(&self) -> bool {
        self.chunks.is_empty()
    }

    pub fn dir(&self) -> &Path {
        &self.dir
    }

    pub fn chunk_of(&self, file: &Path) -> Option<usize> {
        self.file_chunk.get(file).copied()
    }

    pub fn markdown_path(&self, index: usize) -> PathBuf {
        self.dir.join(format!("chunk_{index:03}.md"))
    }

    pub fn html_path(&self, index: usize) -> PathBuf {
        self.dir.join(format!("chunk_{index:03}.html"))
    }

    /// `href` prefix for a link from chunk `from` to an anchor in chunk `to`:
    /// empty for a link inside the same chunk, the HTML file URI otherwise.
    pub fn link_prefix(&self, from: usize, to: usize) -> String {
        if from == to {
            String::new()
        } else {
            file_uri(&self.html_path(to))
        }
    }
}

/// First path component below the markdown directory (the chapter), or an
/// empty string for files located directly in the markdown directory.
fn chapter_of(markdown_dir: &Path, file: &Path) -> String {
    file.strip_prefix(markdown_dir)
        .ok()
        .and_then(|rel| rel.parent())
        .and_then(|parent| parent.components().next())
        .map(|component| component.as_os_str().to_string_lossy().to_string())
        .unwrap_or_default()
}

#[cfg(test)]
mod tests {
    use super::*;

    fn plan(max: usize) -> ChunkPlan {
        let root = Path::new("/doc");
        let files: Vec<PathBuf> = [
            "/doc/README.md",
            "/doc/getting_started.md",
            "/doc/core/a.md",
            "/doc/core/b.md",
            "/doc/core/sub/c.md",
            "/doc/graphics/plot.md",
        ]
        .iter()
        .map(PathBuf::from)
        .collect();
        ChunkPlan::with_max_files(root, &files, PathBuf::from("/tmp/chunks"), max)
    }

    #[test]
    fn groups_consecutive_files_by_chapter() {
        let plan = plan(100);
        assert_eq!(plan.len(), 3);
        assert_eq!(plan.chunks[0].len(), 2); // root files
        assert_eq!(plan.chunks[1].len(), 3); // core (including sub directory)
        assert_eq!(plan.chunks[2].len(), 1); // graphics
        assert_eq!(plan.chunk_of(Path::new("/doc/core/sub/c.md")), Some(1));
    }

    #[test]
    fn splits_large_chapters() {
        let plan = plan(2);
        assert_eq!(plan.len(), 4);
        assert_eq!(
            plan.chunks[1],
            vec![
                PathBuf::from("/doc/core/a.md"),
                PathBuf::from("/doc/core/b.md")
            ]
        );
        assert_eq!(plan.chunks[2], vec![PathBuf::from("/doc/core/sub/c.md")]);
    }

    #[test]
    fn splits_chapters_exceeding_the_byte_limit() {
        let dir = tempfile::tempdir().unwrap();
        let root = dir.path();
        let chapter = root.join("big");
        std::fs::create_dir_all(&chapter).unwrap();
        let mut files = Vec::new();
        for i in 0..4 {
            let f = chapter.join(format!("{i}.md"));
            std::fs::write(&f, vec![b'x'; 600]).unwrap();
            files.push(f);
        }
        let plan = ChunkPlan::with_limits(root, &files, root.join("chunks"), 100, 1000);
        // 600 + 600 > 1000: one file per chunk.
        assert_eq!(plan.len(), 4);
        let plan = ChunkPlan::with_limits(root, &files, root.join("chunks"), 100, 1300);
        assert_eq!(plan.len(), 2);
    }

    #[test]
    fn link_prefix_is_empty_inside_a_chunk_and_a_file_uri_across_chunks() {
        let plan = plan(100);
        assert_eq!(plan.link_prefix(1, 1), "");
        let prefix = plan.link_prefix(0, 2);
        assert!(prefix.starts_with("file:///"), "{prefix}");
        assert!(prefix.ends_with("chunk_002.html"), "{prefix}");
    }
}
