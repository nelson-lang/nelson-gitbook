# xmldoctohtml

Converts xml Nelson help files to html.

## 📝 Syntax

- status = xmldoctohtml(source\_dirs, destination\_dir, main\_title, overwrite)
- status = xmldoctohtml(source\_dirs, destination\_dir, main\_title, overwrite, index\_dirs)

## 📥 Input argument

- source\_dirs - a cell of string: list of xml filenames.
- destination\_dir - a string: directory destination.
- main\_title - a string: title of main index.
- overwrite - a logical: force overwrite if file destination already exists
- index\_dirs - a cell of string (optional): XML help roots of the other modules whose pages may be linked, used to resolve <link linkend="${module}name">.
- html\_type - a string: 'web' default or 'html' (local)

## 📤 Output argument

- status - a logical: files generated or not.

## 📄 Description


<b>xmldoctohtml</b> converts xml Nelson help files to html. 

Links declared with the link element in chapter\_description are retained in the generated chapter summary. A linkend such as guide or nested/guide is relative to the module root; ${module}guide and {module}guide select a module explicitly. Targets are XML page paths without the extension, keywords or aliases: every link is resolved from the keyword index of source\_dirs and index\_dirs and points to the real page, even in a chapter sub-directory or when the file name differs from the keyword. Unresolved links are reported as warnings.


## 🔗 See also

[xmldocbuild](../help_tools/xmldocbuild.md), [buildhelp](../help_tools/buildhelp.md), [buildhelpweb](../help_tools/buildhelpweb.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | index_dirs input argument: links resolved from the keyword index. |
| 1.15.0   | html_type input argument |

<!--
## 👤 Author

Allan CORNET
-->
