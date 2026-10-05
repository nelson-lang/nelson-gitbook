# Nelson GitBook 📚

Welcome to the Nelson GitBook repository! This project hosts the official documentation for the [Nelson](https://nelson-lang.github.io/) array programming language.

## Overview 🌟

This repository contains:

- **HTML documentation** — built by Nelson's `buildhelpweb` and published to [nelson-lang.github.io/nelson-gitbook](https://nelson-lang.github.io/nelson-gitbook/).
- **Markdown sources** — generated under `markdown/` for use with GitBook or offline reading.
- **PDF builder** — a Rust tool (`nelson-pdf-builder`) that uses [Pandoc](https://pandoc.org/) to produce printable manuals.

Supported languages: **English** (`en`) and **French** (`fr`).

## Prerequisites 🛠️

| Tool                                                              | Purpose                               |
| ----------------------------------------------------------------- | ------------------------------------- |
| [Nelson](https://nelson-lang.github.io/)                          | Generate HTML and Markdown help files |
| [Node.js](https://nodejs.org/)                                    | Run Prettier for Markdown formatting  |
| [Rust / Cargo](https://www.rust-lang.org/)                        | Build the PDF builder tool            |
| [Pandoc](https://pandoc.org/) + a PDF engine (e.g. `wkhtmltopdf`) | Render PDF manuals                    |

Install Node.js dependencies:

```bash
nvm use .
npm install
```

## Updating the Documentation ⚙️

Run the following script from inside Nelson to regenerate all HTML and Markdown files:

```matlab
% From the nelson-gitbook root directory
run('./scripts/update_help.m');
```

This script:

1. Calls `buildhelpweb` to produce versioned and `latest` HTML output under `docs/releases/`.
2. Calls `buildhelpmd` to regenerate the Markdown sources under `markdown/`.
3. Runs Prettier to normalise formatting.

After running, review and commit the modified files.

## Building PDF Manuals 📄

### Linux / macOS

```bash
./pandoc-build-pdf.sh              # builds both en and fr
./pandoc-build-pdf.sh en           # English only
./pandoc-build-pdf.sh fr           # French only
```

### Windows

```bat
pandoc-build-pdf.bat               :: builds both en and fr
pandoc-build-pdf.bat en            :: English only
pandoc-build-pdf.bat fr            :: French only
```

The scripts compile the Rust PDF builder (`cargo build --release`) and then invoke it. Pandoc and the PDF engine must be available in `PATH`.

Notes on the PDF pipeline:

- SVG images are rasterized in-process with [resvg](https://github.com/linebender/resvg); Inkscape or ImageMagick are only used as fallbacks when resvg cannot parse a file.
- PNG images are referenced as `file://` URIs. Set `NELSON_INLINE_PNG=1` to inline them as base64 data URIs instead (much larger intermediate markdown).
- Emoji are detected generically (Unicode emoji blocks, including variation selectors, skin tones, ZWJ sequences and flags) and rendered as Twemoji images from `theme/emoji/<codepoints>.png`, using Twemoji's file naming (lowercase hex codepoints joined by `-`, for example `26a0.png` or `1f468-200d-1f469-200d-1f467.png`). An emoji without a local PNG is kept as plain text and listed in a `WARNING` at the end of the build, together with the `curl` command to fetch it. To add a new emoji to the documentation, just download its PNG:

  ```bash
  curl -sSL -o theme/emoji/1f680.png https://cdn.jsdelivr.net/gh/twitter/twemoji@latest/assets/72x72/1f680.png
  ```
- The manual is split into chapter chunks: one chunk per top-level directory, further split beyond 40 files or 512 KB of markdown (about 230 chunks per language). Each chunk is converted to a standalone HTML file by Pandoc (up to 8 processes in parallel), then a single wkhtmltopdf call renders all chunks into one PDF, so internal links stay clickable and the `Page X of Y` footer is global. Links between chunks use `file:///.../chunk_NNN.html#anchor` URIs, which wkhtmltopdf turns into PDF destinations.
- The per-line anchors Pandoc adds to highlighted code blocks (`<a href="#cb12-3">`, about 270,000 in the English manual versus 10,000 real links) are stripped from the chunk HTML. wkhtmltopdf resolves every `<a href="#...">` with up to three DOM queries on the target document, which is what made the single-document build take more than 6 hours.
- Links to pages that do not exist in the manual are kept as plain text instead of `file://` links.
- Reference timings on a desktop machine: about 90 s for the English manual (4 505 pages, 1 329 images, 11 000 links) and 115 s for the French one. The Rust pre-processing takes about 20 s, Pandoc 15 s and wkhtmltopdf 50 to 75 s.
- Known artifact: wkhtmltopdf occasionally emits a blank page at the end of a chunk when the chapter content ends within a few pixels of the page bottom (one occurrence in the English manual). No content is lost; it depends on the layout and moves when the content changes, so it is left as is.
- The CI workflow builds `en` and `fr` in parallel jobs.

## Published Documentation 🌐

The latest documentation is available at:
[https://nelson-lang.github.io/nelson-gitbook/](https://nelson-lang.github.io/nelson-gitbook/)

## Contributing 🤝

Contributions are welcome! Please open issues or submit pull requests for improvements, corrections, or new content.

## License 📜

This project is licensed under the same license as Nelson. See the [LICENSE](LICENSE) file for details.

## Contact 📧

Maintainer: Allan CORNET  
Email: <nelson.numerical.computation@gmail.com>
