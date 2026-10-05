#import "nelson_help.typ": *

= buildhelptypst <help_tools:buildhelptypst>

Build help of Nelson's modules as Typst sources.

== Syntax

- #raw("buildhelptypst(dirdest)");
- #raw("buildhelptypst(dirdest, module_name)");

== Input argument

/ dirdest: a string: a path destination.
/ module\_name: a string: module name (module must be loaded).

== Description

#strong[buildhelptypst]; generates the help as Typst sources, ready to be compiled to PDF.

 For each available language, the pages of a module are written to #raw("dirdest/<lang>/<module>/"); with a #raw("main.typ"); root document (see #nlink(<help_tools:xmldoctotypst>)[xmldoctotypst];). The root document #raw("dirdest/<lang>/main.typ"); applies the #raw("nelson-style"); page style of #raw("nelson_help.typ"); and includes, in order: the modules, then a table of contents.

 With one argument, the whole manual is built: the home page, the getting started guide, the changelogs and the licenses (hand-written markdown pages of the #raw("main"); module, converted to Typst) are added around the modules, as in the markdown manual built by #nlink(<help_tools:buildhelpmd>)[buildhelpmd];.

 Compile one module with #raw("typst compile dirdest/en/core/main.typ");, or the whole manual with #raw("typst compile dirdest/en/main.typ");. The LaTeX fragments of the pages are typeset with the #raw("mitex"); Typst package, downloaded on first use by the typst compiler.


== Example

``````matlab
buildhelptypst(tempdir(), 'core');
dir([tempdir(), 'en/core'])
``````


== See also

#nlink(<help_tools:buildhelp>)[buildhelp];, #nlink(<help_tools:buildhelpmd>)[buildhelpmd];, #nlink(<help_tools:xmldoctotypst>)[xmldoctotypst];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
