# xmldoctotypst

Converts xml Nelson help files to Typst sources.

## 📝 Syntax

- status = xmldoctotypst(source\_dirs, destination\_dir, main\_title, overwrite)
- [status, msg] = xmldoctotypst(source\_dirs, destination\_dir, main\_title, overwrite)
- [status, msg] = xmldoctotypst(source\_dirs, destination\_dir, main\_title, overwrite, index\_dirs)

## 📥 Input argument

- source\_dirs - a cell of string: list of xml directories.
- destination\_dir - a string: directory destination.
- main\_title - a string: title of main document.
- overwrite - a logical: force overwrite if file destination already exists
- index\_dirs - a cell of string: XML help roots of other modules, used to resolve cross-module links (optional).

## 📤 Output argument

- status - a logical: files generated or not.
- msg - a string: error message when generation fails.

## 📄 Description


<b>xmldoctotypst</b> converts xml Nelson help files to Typst sources. 

Each help page becomes a <code>.typ</code> file whose title carries the label <code><module:page></code>. The destination directory also receives <code>main.typ</code> (chapters, list of functions, and every page included one heading level below), <code>toc.typ</code> (table of contents) and <code>nelson_help.typ</code> (shared helpers imported by the pages). 

Cross-references use the <code>nlink</code> helper: a reference becomes a link when the target page is part of the compiled document and plain text otherwise. LaTeX fragments are typeset with the <code>mitex</code> Typst package (<code>latex</code> helper). A <code>source_code</code> element with <code>start</code> and <code>end</code> bounds is printed as a code listing; without bounds, the whole file is only cited by its path (<code>source-ref</code> helper), which keeps the manual compact. 

Compile the result with the typst compiler: <code>typst compile main.typ</code>.

## 💡 Example



```matlab
source = [modulepath('help_tools'), '/help/en_US/xml'];
destination = [tempdir(), 'help_tools_typst'];
status = xmldoctotypst(source, destination, 'help_tools')
dir(destination)
```


## 🔗 See also

[xmldocbuild](../help_tools/xmldocbuild.md), [buildhelptypst](../help_tools/buildhelptypst.md), [xmldoctomd](../help_tools/xmldoctomd.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
