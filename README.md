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
