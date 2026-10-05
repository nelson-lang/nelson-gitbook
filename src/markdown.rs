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

use anyhow::Result;
use regex::{Captures, Regex};

use crate::assets::AssetProcessor;
use crate::chunks::ChunkPlan;
use crate::emoji::EmojiResolver;
use crate::files::{full_path, AnchorMap};

pub struct TransformContext<'a> {
    pub file: &'a Path,
    pub file_dir: &'a Path,
    pub anchor_map: &'a AnchorMap,
    /// Chapter chunking plan and the chunk the current file belongs to. Links
    /// to anchors located in another chunk are prefixed with that chunk's HTML
    /// file URI so wkhtmltopdf can resolve them across objects.
    pub chunks: Option<&'a ChunkPlan>,
    pub chunk_index: usize,
}

pub fn transform_markdown(
    mut content: String,
    ctx: &TransformContext<'_>,
    assets: &mut AssetProcessor,
    emoji: &mut EmojiResolver,
) -> Result<String> {
    let full = full_path(ctx.file)?;
    if let Some(anchor_id) = ctx.anchor_map.get(&full) {
        content = format!("<a id='{anchor_id}' name='{anchor_id}'></a>\n\n{content}");
    }

    content = remove_html_only_elements(&content);
    content = mark_readme_subchapter_headings(&content, ctx.file);
    content = emoji.replace(&content);
    content = remove_image_size_attrs(&content);
    content = rewrite_markdown_md_links(&content, ctx)?;
    content = remove_img_style_attrs(&content);
    content = rewrite_markdown_image_paths(&content, ctx.file_dir);
    content = rewrite_html_img_paths(&content, ctx.file_dir);
    content = assets.convert_svg_references(&content, ctx.file_dir)?;
    content = assets.copy_png_references(&content, ctx.file_dir)?;
    content = wrap_markdown_png_images(&content);
    content = wrap_html_png_images(&content);
    content = markdown_anchor_links_to_html(&content);
    Ok(content)
}

pub fn mark_readme_subchapter_headings(content: &str, file: &Path) -> String {
    if !file
        .file_name()
        .and_then(|name| name.to_str())
        .is_some_and(|name| name.eq_ignore_ascii_case("README.md"))
    {
        return content.to_string();
    }

    let heading = Regex::new(r"(?m)^(##\s+)(.+?)\s*$").unwrap();
    heading
        .replace_all(content, |captures: &Captures| {
            let title = captures.get(2).unwrap().as_str();
            if title.eq_ignore_ascii_case("Functions") || title.contains("{.") {
                captures.get(0).unwrap().as_str().to_string()
            } else {
                format!("{}{} {{.nelson-subchapter-heading}}", &captures[1], title)
            }
        })
        .to_string()
}

pub fn remove_html_only_elements(content: &str) -> String {
    let links = Regex::new(r#"<link\s+rel="stylesheet"[^>]*>"#).unwrap();
    let scripts = Regex::new(r"(?s)<script[^>]*>.*?</script>").unwrap();
    scripts
        .replace_all(&links.replace_all(content, ""), "")
        .to_string()
}

pub fn remove_image_size_attrs(content: &str) -> String {
    let width = Regex::new(r#"<img([^>]*)\s+width="[^"]*""#).unwrap();
    let height = Regex::new(r#"<img([^>]*)\s+height="[^"]*""#).unwrap();
    let align = Regex::new(r#"\s+align="[^"]*""#).unwrap();
    let content = width.replace_all(content, "<img$1");
    let content = height.replace_all(&content, "<img$1");
    align.replace_all(&content, "").to_string()
}

pub fn remove_img_style_attrs(content: &str) -> String {
    Regex::new(r#"<img([^>]*)\s+style="[^"]*""#)
        .unwrap()
        .replace_all(content, "<img$1")
        .to_string()
}

pub fn rewrite_markdown_md_links(content: &str, ctx: &TransformContext<'_>) -> Result<String> {
    let re = Regex::new(r"\[([^\]]+)\]\(([^\)]+)\.md\)").unwrap();
    let mut err = None;
    let result = re.replace_all(content, |captures: &Captures| match rewrite_single_md_link(
        captures, ctx,
    ) {
        Ok(value) => value,
        Err(error) => {
            err = Some(error);
            captures.get(0).unwrap().as_str().to_string()
        }
    });
    if let Some(error) = err {
        return Err(error);
    }
    Ok(result.to_string())
}

fn rewrite_single_md_link(captures: &Captures<'_>, ctx: &TransformContext<'_>) -> Result<String> {
    let link_text = captures.get(1).unwrap().as_str();
    let link_path = captures.get(2).unwrap().as_str();
    if link_path.starts_with("http") {
        return Ok(captures.get(0).unwrap().as_str().to_string());
    }
    if link_text.contains('$') {
        return Ok(captures.get(0).unwrap().as_str().to_string());
    }

    let mut resolved = Path::new(link_path).to_path_buf();
    if !is_absolute_like(link_path) {
        resolved = ctx.file_dir.join(link_path);
    }
    // `Path::with_extension` would replace the last dotted segment of names
    // such as `nelson.graphics.errorbar`, so the extension is appended instead.
    let resolved_full = full_path(&PathBuf::from(format!("{}.md", resolved.to_string_lossy())))?;

    if let Some(anchor) = ctx.anchor_map.get(&resolved_full) {
        let prefix = ctx
            .chunks
            .and_then(|plan| {
                plan.chunk_of(&resolved_full)
                    .map(|target| plan.link_prefix(ctx.chunk_index, target))
            })
            .unwrap_or_default();
        Ok(format!("[{link_text}]({prefix}#{anchor})"))
    } else {
        // The target page is not part of the manual: a `file://` link would be
        // useless in a distributed PDF, so only the link text is kept.
        Ok(link_text.to_string())
    }
}

pub fn rewrite_markdown_image_paths(content: &str, file_dir: &Path) -> String {
    let re = Regex::new(r"!\[([^\]]*)\]\(([^)]+)\)").unwrap();
    re.replace_all(content, |captures: &Captures| {
        let alt = captures.get(1).unwrap().as_str();
        let path = captures.get(2).unwrap().as_str();
        if is_absolute_markdown_image(path) {
            return captures.get(0).unwrap().as_str().to_string();
        }
        format!(
            "![{alt}]({}/{})",
            file_uri(file_dir),
            path.replace('\\', "/")
        )
    })
    .to_string()
}

pub fn rewrite_html_img_paths(content: &str, file_dir: &Path) -> String {
    let tag_re = Regex::new(r"<img\b[^>]*>").unwrap();
    let src_re = Regex::new(r#"src\s*=\s*(?:"([^"]+)"|'([^']+)')"#).unwrap();

    tag_re
        .replace_all(content, |captures: &Captures| {
            let tag = captures.get(0).unwrap().as_str();
            let Some(src_caps) = src_re.captures(tag) else {
                return tag.to_string();
            };
            let src = src_caps
                .get(1)
                .or_else(|| src_caps.get(2))
                .unwrap()
                .as_str();
            if is_absolute_img_src(src) {
                return tag.to_string();
            }
            let new_src = format!("{}/{}", file_uri(file_dir), src.replace('\\', "/"));
            src_re
                .replace(tag, format!("src=\"{new_src}\""))
                .to_string()
        })
        .to_string()
}

pub fn wrap_markdown_png_images(content: &str) -> String {
    let re = Regex::new(r"!\[([^\]]*)\]\(([^)]*\.png[^)]*)\)").unwrap();
    re.replace_all(content, |captures: &Captures| {
        let alt = captures.get(1).unwrap().as_str();
        let src = captures.get(2).unwrap().as_str();
        if src.contains("twemoji") || src.contains("cdn.jsdelivr.net") {
            captures.get(0).unwrap().as_str().to_string()
        } else {
            format!("<div class=\"nelson-pdf-image\"><img class=\"nelson-pdf-image__img\" src=\"{src}\" alt=\"{alt}\"></div>")
        }
    })
    .to_string()
}

pub fn wrap_html_png_images(content: &str) -> String {
    let re = Regex::new(r#"<img\b[^>]*src\s*=\s*['"][^'"]*(?:\.png(?:\?[^'"]*)?|\.svg(?:\?[^'"]*)?|data:image/png;base64,)[^'"]*['"][^>]*>"#).unwrap();
    let src_re = Regex::new(r#"src\s*=\s*(?:"([^"]+)"|'([^']+)')"#).unwrap();
    let alt_re = Regex::new(r#"alt\s*=\s*(?:"([^"]*)"|'([^']*)')"#).unwrap();

    re.replace_all(content, |captures: &Captures| {
        let tag = captures.get(0).unwrap().as_str();
        if tag.contains("data-emoji") {
            return tag.to_string();
        }
        let Some(src_caps) = src_re.captures(tag) else {
            return tag.to_string();
        };
        let src = src_caps
            .get(1)
            .or_else(|| src_caps.get(2))
            .unwrap()
            .as_str();
        if src.contains("twemoji") || src.contains("cdn.jsdelivr.net") {
            return tag.to_string();
        }
        let normalized_src = if src.starts_with("file:///") {
            format!("file:///{}", src.trim_start_matches("file:///").replace('\\', "/"))
        } else if src.starts_with("data:") {
            src.to_string()
        } else {
            src.replace('\\', "/")
        };
        let alt = alt_re
            .captures(tag)
            .and_then(|caps| caps.get(1).or_else(|| caps.get(2)))
            .map(|m| format!(" alt=\"{}\"", m.as_str()))
            .unwrap_or_default();
        format!("<div class=\"nelson-pdf-image\"><img class=\"nelson-pdf-image__img\" src=\"{normalized_src}\"{alt}></div>")
    })
    .to_string()
}

/// Turns `[text](#anchor)` and `[text](file:///chunk.html#anchor)` links into
/// raw HTML anchors so Pandoc leaves them untouched.
pub fn markdown_anchor_links_to_html(content: &str) -> String {
    Regex::new(r"\[([^\]]+)\]\(((?:file:///[^)#\s]+)?#[A-Za-z0-9\-_:]+)\)")
        .unwrap()
        .replace_all(content, "<a href='$2'>$1</a>")
        .to_string()
}

pub fn file_uri(path: &Path) -> String {
    format!("file:///{}", path.to_string_lossy().replace('\\', "/"))
}

fn is_absolute_like(value: &str) -> bool {
    value.starts_with('/')
        || value.starts_with("file:///")
        || value.starts_with("//")
        || (value.len() >= 3 && value.as_bytes()[1] == b':' && value.as_bytes()[2] == b'\\')
}

fn is_absolute_img_src(value: &str) -> bool {
    value.starts_with("http:")
        || value.starts_with("https:")
        || value.starts_with('/')
        || value.starts_with("file:")
        || value.starts_with("//")
        || (value.len() >= 3 && value.as_bytes()[1] == b':' && value.as_bytes()[2] == b'\\')
}

fn is_absolute_markdown_image(value: &str) -> bool {
    value.starts_with("http")
        || value.starts_with('/')
        || value.starts_with("file:")
        || value.starts_with("//")
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::files::build_anchor_map;
    use std::fs;
    use tempfile::tempdir;

    #[test]
    fn removes_html_only_elements_and_img_attrs() {
        let input = r#"<link rel="stylesheet" href="x"><script>bad()</script><img src="a.png" width="1" height="2" align="left" style="x">"#;
        let out =
            remove_img_style_attrs(&remove_image_size_attrs(&remove_html_only_elements(input)));
        assert!(!out.contains("<script>"));
        assert!(!out.contains("stylesheet"));
        assert!(!out.contains("width="));
        assert!(!out.contains("height="));
        assert!(!out.contains("align="));
        assert!(!out.contains("style="));
    }

    #[test]
    fn rewrites_known_and_unknown_md_links() -> Result<()> {
        let dir = tempdir()?;
        let source = dir.path().join("source.md");
        let target = dir.path().join("target.md");
        fs::write(&source, "")?;
        fs::write(&target, "")?;
        let anchors = build_anchor_map(dir.path(), std::slice::from_ref(&target))?;
        let ctx = TransformContext {
            file: &source,
            file_dir: dir.path(),
            anchor_map: &anchors,
            chunks: None,
            chunk_index: 0,
        };

        let out = rewrite_markdown_md_links("[Target](target.md) [Missing](missing.md)", &ctx)?;
        assert!(out.contains("[Target](#nelson-target)"));
        assert!(out.contains(" Missing"), "{out}");
        assert!(!out.contains("file:///"), "{out}");
        Ok(())
    }

    #[test]
    fn rewrites_relative_markdown_and_html_images() {
        let dir = Path::new(r"C:\docs");
        let out = rewrite_markdown_image_paths("![A](img/a.png)", dir);
        assert!(out.contains("file:///C:/docs/img/a.png"));
        let out = rewrite_html_img_paths(r#"<img src="img/a.png" alt="A">"#, dir);
        assert!(out.contains(r#"src="file:///C:/docs/img/a.png""#));
    }

    #[test]
    fn wraps_png_but_not_emoji() {
        let out =
            wrap_markdown_png_images("![A](file:///a.png) ![E](https://cdn.jsdelivr.net/e.png)");
        assert!(out.contains("class=\"nelson-pdf-image\""));
        assert!(out.contains("class=\"nelson-pdf-image__img\""));
        assert!(out.contains("![E](https://cdn.jsdelivr.net/e.png)"));
    }

    #[test]
    fn wraps_data_uri_png_html_images() {
        let out = wrap_html_png_images(r#"<img src="data:image/png;base64,abc" alt="A"/>"#);
        assert!(out.contains("class=\"nelson-pdf-image\""));
        assert!(out.contains("class=\"nelson-pdf-image__img\""));
        assert!(out.contains("data:image/png;base64,abc"));
    }

    #[test]
    fn wraps_svg_html_images_if_conversion_is_skipped() {
        let out = wrap_html_png_images(r#"<img src="file:///tmp/a.svg" alt="A"/>"#);
        assert!(out.contains("class=\"nelson-pdf-image\""));
        assert!(out.contains("file:///tmp/a.svg"));
    }

    #[test]
    fn marks_only_readme_subchapter_headings() {
        let readme = Path::new("graphics/README.md");
        let out = mark_readme_subchapter_headings(
            "## Colormap functions\n\n## Functions\n\n## Existing {.custom}\n",
            readme,
        );
        assert!(out.contains("## Colormap functions {.nelson-subchapter-heading}"));
        assert!(out.contains("## Functions\n"));
        assert!(out.contains("## Existing {.custom}\n"));

        let topic = Path::new("graphics/plot.md");
        let out = mark_readme_subchapter_headings("## Description\n", topic);
        assert_eq!(out, "## Description\n");
    }

    #[test]
    fn math_like_markdown_links_are_not_rewritten() -> Result<()> {
        let dir = tempdir()?;
        let source = dir.path().join("source.md");
        fs::write(&source, "")?;
        let anchors = AnchorMap::new();
        let ctx = TransformContext {
            file: &source,
            file_dir: dir.path(),
            anchor_map: &anchors,
            chunks: None,
            chunk_index: 0,
        };

        let out = rewrite_markdown_md_links("[$x$](target.md)", &ctx)?;

        assert_eq!(out, "[$x$](target.md)");
        Ok(())
    }

    #[test]
    fn dotted_file_names_resolve_to_anchors() -> Result<()> {
        let dir = tempdir()?;
        let source = dir.path().join("errorbar.md");
        let target = dir.path().join("nelson.graphics.errorbar.md");
        fs::write(&source, "")?;
        fs::write(&target, "")?;
        let anchors = build_anchor_map(dir.path(), std::slice::from_ref(&target))?;
        let ctx = TransformContext {
            file: &source,
            file_dir: dir.path(),
            anchor_map: &anchors,
            chunks: None,
            chunk_index: 0,
        };

        let out = rewrite_markdown_md_links("[props](nelson.graphics.errorbar.md)", &ctx)?;

        assert_eq!(out, "[props](#nelson-nelson-graphics-errorbar)");
        Ok(())
    }

    #[test]
    fn cross_chunk_links_get_the_target_chunk_uri() -> Result<()> {
        let dir = tempdir()?;
        let source = dir.path().join("a.md");
        let target = dir.path().join("sub").join("b.md");
        fs::create_dir_all(target.parent().unwrap())?;
        fs::write(&source, "")?;
        fs::write(&target, "")?;
        let sorted = vec![source.clone(), target.clone()];
        let anchors = build_anchor_map(dir.path(), &sorted)?;
        let plan = ChunkPlan::with_max_files(dir.path(), &sorted, dir.path().join("chunks"), 100);
        assert_eq!(plan.len(), 2);
        let ctx = TransformContext {
            file: &source,
            file_dir: dir.path(),
            anchor_map: &anchors,
            chunks: Some(&plan),
            chunk_index: 0,
        };

        let out = rewrite_markdown_md_links("[B](sub/b.md) [A](a.md)", &ctx)?;
        assert!(out.contains("chunk_001.html#nelson-sub-b)"), "{out}");
        assert!(out.contains("[A](#nelson-a)"), "{out}");
        let html = markdown_anchor_links_to_html(&out);
        assert!(html.contains("<a href='file:///"), "{html}");
        assert!(
            html.contains("chunk_001.html#nelson-sub-b'>B</a>"),
            "{html}"
        );
        assert!(html.contains("<a href='#nelson-a'>A</a>"), "{html}");
        Ok(())
    }

    #[test]
    fn anchor_markdown_links_become_html_links() {
        assert_eq!(
            markdown_anchor_links_to_html("[A](#nelson-a)"),
            "<a href='#nelson-a'>A</a>"
        );
    }
}
