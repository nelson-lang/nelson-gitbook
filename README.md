# Nelson GitBook 📚

Welcome to the Nelson GitBook repository! This project hosts the official documentation for the Nelson programming language.

## Introduction 🌟

Nelson is a powerful, user-friendly programming language focused on simplicity and efficiency. This GitBook provides comprehensive documentation, tutorials, and references to help you get started and master Nelson.

## Prerequisites 🛠️

Before you begin, ensure you have the following installed:

- [Node.js](https://nodejs.org/) (for Prettier)
- [Nelson](https://nelson-lang.github.io/) (any version you wish to document)

To set up your environment:

```bash
nvm use .
npm install
```

## Installation ⚙️

To generate and update the documentation:

1. Run the update script from the root directory to extract all help files, convert them to Markdown, prettify, and generate HTML:

   ```matlab
   % From nelson-gitbook root directory
   run('./scripts/update_help.m');
   ```

2. Review and commit the modified files.

3. Check the published documentation at: [https://nelson-lang.github.io/nelson-gitbook/](https://nelson-lang.github.io/nelson-gitbook/)

## Usage 🚀

- Browse the documentation online or locally.
- To contribute or update help files, edit the relevant source files and rerun the update script.

## Contributing 🤝

Contributions are welcome! Please open issues or submit pull requests for improvements, corrections, or new content.

## License 📜

This project is licensed under the same license as Nelson. See the [LICENSE](LICENSE) file for details.

## Contact 📧

Maintainer: Allan CORNET  
Email: <nelson.numerical.computation@gmail.com>

Happy coding with Nelson! 🎉
