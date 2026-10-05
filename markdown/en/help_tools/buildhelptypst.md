# buildhelptypst

Build help of Nelson's modules as Typst sources.

## 📝 Syntax

- buildhelptypst(dirdest)
- buildhelptypst(dirdest, module\_name)

## 📥 Input argument

- dirdest - a string: a path destination.
- module\_name - a string: module name (module must be loaded).

## 📄 Description


<b>buildhelptypst</b> generates the help as Typst sources, ready to be compiled to PDF. 

For each available language, the pages of a module are written to <code>dirdest/<lang>/<module>/</code> with a <code>main.typ</code> root document (see [xmldoctotypst](../help_tools/xmldoctotypst.md)). The root document <code>dirdest/<lang>/main.typ</code> applies the <code>nelson-style</code> page style of <code>nelson_help.typ</code> and includes, in order: the modules, then a table of contents. 

With one argument, the whole manual is built: the home page, the getting started guide, the changelogs and the licenses (hand-written markdown pages of the <code>main</code> module, converted to Typst) are added around the modules, as in the markdown manual built by [buildhelpmd](../help_tools/buildhelpmd.md). 

Compile one module with <code>typst compile dirdest/en/core/main.typ</code>, or the whole manual with <code>typst compile dirdest/en/main.typ</code>. The LaTeX fragments of the pages are typeset with the <code>mitex</code> Typst package, downloaded on first use by the typst compiler.

## 💡 Example



```matlab
buildhelptypst(tempdir(), 'core');
dir([tempdir(), 'en/core'])
```


## 🔗 See also

[buildhelp](../help_tools/buildhelp.md), [buildhelpmd](../help_tools/buildhelpmd.md), [xmldoctotypst](../help_tools/xmldoctotypst.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
