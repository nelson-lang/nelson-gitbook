# Nelson GitBook 📚

Welcome to the Nelson GitBook repository! This project contains the documentation for the Nelson programming language.

## Table of Contents 📑

- [Introduction](#introduction)
- [Prerequisites](#Prerequisites)
- [Installation](#installation)
- [License](#license)

## Introduction 🌟

Nelson is a powerful and easy-to-use programming language designed for simplicity and efficiency. This GitBook provides comprehensive documentation to help you get started and make the most of Nelson.

## Prerequisites 🛠️

- [rust](https://www.rust-lang.org/tools/install) (mdbook)

```bash
cargo install mdbook --version 0.4.47
```

- node (prettier)

```bash
nvm use .
npm install
```

- Nelson (version that you want to add help files)

## Installation ⚙️

`update_help` will extract all help files, convert them to markdown, prettify, and convert them to HTML.

```matlab
% from nelson-gitbook root directory
run('./scripts/update_help.m);
```

Commit modified files and check results: <https://nelson-lang.github.io/nelson-gitbook/>

## License 📜

This project is licensed under same license than Nelson. See the [LICENSE](LICENSE) file for more details.

Happy coding with Nelson! 🎉

Contact: Allan CORNET (<nelson.numerical.computation@gmail.com>)
