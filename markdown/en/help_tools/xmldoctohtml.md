# xmldoctohtml

Converts xml Nelson help files to html.

## 📝 Syntax

- status = xmldoctohtml(source_dirs, destination_dir, main_title, overwrite)

## 📥 Input argument

- source_dirs - a cell of string: list of xml filenames.
- destination_dir - a string: directory destination.
- main_title - a string: title of main index.
- overwrite - a logical: force overwrite if file destination already exists
- html_type - a string: 'web' default or 'html' (local)

## 📤 Output argument

- status - a logical: files generated or not.

## 📄 Description

<b>xmldoctohelp</b> converts xml Nelson help files to html.

Links declared with the link element in chapter_description are retained in the generated chapter summary. A linkend such as guide or nested/guide is relative to the module root; ${module}guide and {module}guide select a module explicitly. Targets are XML page paths without the extension.

## 🔗 See also

[xmldocbuild](../help_tools/xmldocbuild.md), [buildhelp](../help_tools/buildhelp.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## 🕔 History

| Version | 📄 Description           |
| ------- | ------------------------ |
| 1.0.0   | initial version          |
| 1.15.0  | html_type input argument |

<!--
## 👤 Author

Allan CORNET
-->
