# xmldocbuild

Internal function to convert xml document files to html.

## 📝 Syntax

- status = xmldocbuild(source\_dirs, destination\_dir, main\_title, export\_format, overwrite)
- [status, msg, warnings] = xmldocbuild(source\_dirs, destination\_dir, main\_title, export\_format, overwrite, index\_dirs)

## 📥 Input argument

- source\_dirs - a cell of string: list of xml filenames.
- destination\_dir - a string: directory destination.
- main\_title - a string: title of main index.
- export\_format - a string: 'html', 'md' or 'typ'.
- overwrite - a logical: force overwrite if file destination already exists
- index\_dirs - a cell of string (optional): XML help roots of the other modules whose pages may be linked, used to resolve <link linkend="${module}name">.

## 📤 Output argument

- status - a logical: files generated or not.
- msg - a string: error message, empty on success.
- warnings - a cell of string: links that could not be resolved. Without this output, each one is raised as a warning.

## 📄 Description


<b>xmldocbuild</b> convert xml document files to html. 

internal function 

Links (<link linkend="...">) are resolved from the keyword index of source\_dirs and index\_dirs: the target may be a keyword, an alias or a page path relative to the module root, optionally prefixed by ${module} or {module}. A resolved link points to the real page, even when it lives in a chapter sub-directory or when its file name differs from its keyword. An unresolved link keeps the legacy path "<module>/<name>" and is reported.


## 🔗 See also

[buildhelp](../help_tools/buildhelp.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 1.15.0   | 
        'qt' input parameter removed. |
| 2.0.0   | index_dirs input and warnings output: links resolved from the keyword index. |

<!--
## 👤 Author

Allan CORNET
-->
