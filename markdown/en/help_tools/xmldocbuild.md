# xmldocbuild

Internal function to convert xml document files to html.

## 📝 Syntax

- status = xmldocbuild(source_dirs, destination_dir, main_title, export_format, overwrite)

## 📥 Input argument

- source_dirs - a cell of string: list of xml filenames.
- destination_dir - a string: directory destination.
- main_title - a string: title of main index.
- export_format - a string: 'html' or 'md'.
- overwrite - a logical: force overwrite if file destination already exists

## 📤 Output argument

- status - a logical: files generated or not.

## 📄 Description

<b>xmldocbuild</b> convert xml document files to html.

internal function

## 🔗 See also

[buildhelp](../help_tools/buildhelp.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## 🕔 History

| Version | 📄 Description                |
| ------- | ----------------------------- |
| 1.0.0   | initial version               |
| 1.15.0  | 'qt' input parameter removed. |

## 👤 Author

Allan CORNET
