//=============================================================================
// Copyright (c) 2026-present Allan CORNET (Nelson)
//=============================================================================
// This file is part of Nelson.
//=============================================================================
// LICENCE_BLOCK_BEGIN
// SPDX-License-Identifier: LGPL-3.0-or-later
// LICENCE_BLOCK_END
//=============================================================================
//! Generic emoji handling for the PDF build.
//!
//! wkhtmltopdf (QtWebKit) cannot render color emoji fonts, so every emoji
//! sequence found in the markdown is replaced by a Twemoji PNG stored in
//! `theme/emoji/<codepoints>.png` (Twemoji naming: codepoints in lowercase hex
//! joined by `-`). Sequences without a local PNG are left untouched as text and
//! reported at the end of the build so the missing images can be downloaded.
use std::collections::{BTreeMap, HashMap};
use std::path::{Path, PathBuf};

use crate::markdown::file_uri;

const ZWJ: char = '\u{200D}';
const VARIATION_SELECTOR_16: char = '\u{FE0F}';

#[derive(Debug, Default)]
pub struct EmojiResolver {
    dir: Option<PathBuf>,
    cache: HashMap<String, Option<PathBuf>>,
    missing: BTreeMap<String, MissingEmoji>,
}

#[derive(Debug, Clone)]
pub struct MissingEmoji {
    pub sequence: String,
    pub count: usize,
}

impl EmojiResolver {
    pub fn new(dir: Option<PathBuf>) -> Self {
        Self {
            dir,
            ..Self::default()
        }
    }

    pub fn dir(&self) -> Option<&Path> {
        self.dir.as_deref()
    }

    /// Replaces every emoji sequence that has a local PNG by an inline `<img>`.
    pub fn replace(&mut self, content: &str) -> String {
        if !content.chars().any(is_emoji_base) {
            return content.to_string();
        }

        let chars: Vec<char> = content.chars().collect();
        let mut out = String::with_capacity(content.len());
        let mut i = 0;
        while i < chars.len() {
            let Some(len) = emoji_sequence_len(&chars[i..]) else {
                out.push(chars[i]);
                i += 1;
                continue;
            };
            let sequence: String = chars[i..i + len].iter().collect();
            match self.resolve(&sequence) {
                Some(png) => out.push_str(&img_tag(&png, &sequence)),
                None => out.push_str(&sequence),
            }
            i += len;
        }
        out
    }

    /// Emoji sequences seen without a local PNG, keyed by Twemoji file name.
    pub fn missing(&self) -> &BTreeMap<String, MissingEmoji> {
        &self.missing
    }

    fn resolve(&mut self, sequence: &str) -> Option<PathBuf> {
        if let Some(cached) = self.cache.get(sequence).cloned() {
            if cached.is_none() {
                self.record_missing(sequence);
            }
            return cached;
        }

        let found = self.dir.as_ref().and_then(|dir| {
            twemoji_file_names(sequence)
                .into_iter()
                .map(|name| dir.join(format!("{name}.png")))
                .find(|path| path.is_file())
        });
        if found.is_none() {
            self.record_missing(sequence);
        }
        self.cache.insert(sequence.to_string(), found.clone());
        found
    }

    fn record_missing(&mut self, sequence: &str) {
        let name = twemoji_file_names(sequence)
            .into_iter()
            .next()
            .unwrap_or_default();
        self.missing
            .entry(name)
            .and_modify(|entry| entry.count += 1)
            .or_insert_with(|| MissingEmoji {
                sequence: sequence.to_string(),
                count: 1,
            });
    }
}

fn img_tag(png: &Path, sequence: &str) -> String {
    format!(
        "<img data-emoji='true' src='{}' alt='{sequence}' style='display: inline-block; width: 0.9em; height: 0.9em; vertical-align: -0.1em; margin: 0 0.05em;'>",
        file_uri(png)
    )
}

/// Candidate Twemoji file names (without extension) for an emoji sequence.
/// Twemoji strips U+FE0F from most names but keeps it in a few ZWJ sequences,
/// so both spellings are tried.
pub fn twemoji_file_names(sequence: &str) -> Vec<String> {
    let without_vs16: Vec<String> = sequence
        .chars()
        .filter(|&c| c != VARIATION_SELECTOR_16)
        .map(|c| format!("{:x}", c as u32))
        .collect();
    let with_vs16: Vec<String> = sequence
        .chars()
        .map(|c| format!("{:x}", c as u32))
        .collect();

    let mut names = vec![without_vs16.join("-")];
    let full = with_vs16.join("-");
    if full != names[0] {
        names.push(full);
    }
    names
}

/// Length (in chars) of the emoji sequence starting at `chars[0]`, if any.
fn emoji_sequence_len(chars: &[char]) -> Option<usize> {
    let first = *chars.first()?;
    if !is_emoji_base(first) {
        return None;
    }

    let mut len = 1;

    // Flags: pair of regional indicators.
    if is_regional_indicator(first) {
        if chars.get(1).copied().is_some_and(is_regional_indicator) {
            len = 2;
        }
        return Some(len);
    }

    len += modifiers_len(&chars[len..]);

    // Zero-width-joiner sequences (families, professions, ...).
    while chars.get(len).copied() == Some(ZWJ) {
        let Some(&next) = chars.get(len + 1) else {
            break;
        };
        if !is_emoji_base(next) {
            break;
        }
        len += 2;
        len += modifiers_len(&chars[len..]);
    }

    Some(len)
}

/// Variation selector and/or skin tone modifier following an emoji base.
fn modifiers_len(chars: &[char]) -> usize {
    let mut len = 0;
    if chars.get(len).copied() == Some(VARIATION_SELECTOR_16) {
        len += 1;
    }
    if chars.get(len).copied().is_some_and(is_skin_tone_modifier) {
        len += 1;
    }
    if chars.get(len).copied() == Some(VARIATION_SELECTOR_16) {
        len += 1;
    }
    len
}

fn is_regional_indicator(c: char) -> bool {
    ('\u{1F1E6}'..='\u{1F1FF}').contains(&c)
}

fn is_skin_tone_modifier(c: char) -> bool {
    ('\u{1F3FB}'..='\u{1F3FF}').contains(&c)
}

/// Characters that start an emoji sequence. This follows the Unicode
/// `Emoji_Presentation`/`Extended_Pictographic` blocks commonly used in
/// documentation, deliberately excluding text-like symbols such as `©`, `®`,
/// `™` and keycap digits so ordinary prose is never altered.
pub fn is_emoji_base(c: char) -> bool {
    matches!(
        c as u32,
        0x1F000..=0x1FAFF   // pictographs, emoticons, transport, symbols, extended-A
            | 0x2600..=0x27BF // miscellaneous symbols, dingbats
            | 0x2B05..=0x2B07 // arrows
            | 0x2B1B..=0x2B1C // black/white large square
            | 0x2B50          // star
            | 0x2B55          // heavy large circle
            | 0x231A..=0x231B // watch, hourglass
            | 0x23E9..=0x23F3 // media controls, alarm clock, hourglass
            | 0x23F8..=0x23FA
            | 0x2194..=0x2199 // arrows
            | 0x21A9..=0x21AA
            | 0x2139          // information source
            | 0x203C          // double exclamation
            | 0x2049          // exclamation question
            | 0x24C2          // circled M
            | 0x25AA..=0x25AB // small squares
            | 0x25B6          // play
            | 0x25C0          // reverse
            | 0x25FB..=0x25FE // medium squares
            | 0x2934..=0x2935 // curved arrows
            | 0x3030          // wavy dash
            | 0x303D          // part alternation mark
            | 0x3297          // circled congratulations
            | 0x3299 // circled secret
    )
}

#[cfg(test)]
mod tests {
    use super::*;
    use std::fs;
    use tempfile::tempdir;

    #[test]
    fn twemoji_names_strip_and_keep_variation_selector() {
        assert_eq!(
            twemoji_file_names("\u{26A0}\u{FE0F}"),
            vec!["26a0", "26a0-fe0f"]
        );
        assert_eq!(twemoji_file_names("\u{1F4DD}"), vec!["1f4dd"]);
        assert_eq!(
            twemoji_file_names("\u{1F468}\u{200D}\u{1F469}\u{200D}\u{1F467}"),
            vec!["1f468-200d-1f469-200d-1f467"]
        );
    }

    #[test]
    fn detects_sequences_with_modifiers_zwj_and_flags() {
        let seq = |s: &str| {
            let chars: Vec<char> = s.chars().collect();
            emoji_sequence_len(&chars)
        };
        assert_eq!(seq("\u{26A0}\u{FE0F} text"), Some(2));
        assert_eq!(seq("\u{1F44D}\u{1F3FB}"), Some(2));
        assert_eq!(
            seq("\u{1F468}\u{200D}\u{1F469}\u{200D}\u{1F467} x"),
            Some(5)
        );
        assert_eq!(seq("\u{1F1EB}\u{1F1F7} fr"), Some(2));
        assert_eq!(seq("abc"), None);
        assert_eq!(seq("\u{00A9} 2026"), None);
    }

    #[test]
    fn replaces_only_sequences_with_local_png_and_reports_missing() {
        let dir = tempdir().unwrap();
        fs::write(dir.path().join("26a0.png"), b"png").unwrap();
        let mut resolver = EmojiResolver::new(Some(dir.path().to_path_buf()));

        let out = resolver.replace("\u{26A0}\u{FE0F} warn \u{2705} ok \u{2705} \u{2713}");

        assert_eq!(out.matches("data-emoji='true'").count(), 1);
        assert!(out.contains("26a0.png"), "{out}");
        assert!(out.contains("alt='\u{26A0}\u{FE0F}'"), "{out}");
        assert!(out.contains("\u{2705} ok \u{2705}"), "{out}");
        assert!(!out.contains("cdn.jsdelivr.net"));

        let missing = resolver.missing();
        assert_eq!(missing.len(), 2, "{missing:?}");
        assert_eq!(missing["2705"].count, 2);
        assert_eq!(missing["2705"].sequence, "\u{2705}");
        assert_eq!(missing["2713"].count, 1);
    }

    #[test]
    fn falls_back_to_variation_selector_file_name() {
        let dir = tempdir().unwrap();
        fs::write(dir.path().join("1f441-fe0f-200d-1f5e8-fe0f.png"), b"png").unwrap();
        let mut resolver = EmojiResolver::new(Some(dir.path().to_path_buf()));

        let out = resolver.replace("\u{1F441}\u{FE0F}\u{200D}\u{1F5E8}\u{FE0F}");

        assert!(out.contains("1f441-fe0f-200d-1f5e8-fe0f.png"), "{out}");
        assert!(resolver.missing().is_empty());
    }

    #[test]
    fn without_directory_text_is_left_untouched() {
        let mut resolver = EmojiResolver::new(None);
        let input = "\u{1F4DD} note";
        assert_eq!(resolver.replace(input), input);
        assert_eq!(resolver.missing().len(), 1);
    }
}
