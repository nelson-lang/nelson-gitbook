#import "nelson_help.typ": *

= xmldoctotypst <help_tools:xmldoctotypst>

Converts xml Nelson help files to Typst sources.

== Syntax

- #raw("status = xmldoctotypst(source_dirs, destination_dir, main_title, overwrite)");
- #raw("[status, msg] = xmldoctotypst(source_dirs, destination_dir, main_title, overwrite)");
- #raw("[status, msg] = xmldoctotypst(source_dirs, destination_dir, main_title, overwrite, index_dirs)");

== Input argument

/ source\_dirs: a cell of string: list of xml directories.
/ destination\_dir: a string: directory destination.
/ main\_title: a string: title of main document.
/ overwrite: a logical: force overwrite if file destination already exists
/ index\_dirs: a cell of string: XML help roots of other modules, used to resolve cross-module links (optional).

== Output argument

/ status: a logical: files generated or not.
/ msg: a string: error message when generation fails.

== Description

#strong[xmldoctotypst]; converts xml Nelson help files to Typst sources.

 Each help page becomes a #raw(".typ"); file whose title carries the label #raw("<module:page>");. The destination directory also receives #raw("main.typ"); (chapters, list of functions, and every page included one heading level below), #raw("toc.typ"); (table of contents) and #raw("nelson_help.typ"); (shared helpers imported by the pages).

 Cross-references use the #raw("nlink"); helper: a reference becomes a link when the target page is part of the compiled document and plain text otherwise. LaTeX fragments are typeset with the #raw("mitex"); Typst package (#raw("latex"); helper). A #raw("source_code"); element with #raw("start"); and #raw("end"); bounds is printed as a code listing; without bounds, the whole file is only cited by its path (#raw("source-ref"); helper), which keeps the manual compact.

 Compile the result with the typst compiler: #raw("typst compile main.typ");.


== Example

``````matlab
source = [modulepath('help_tools'), '/help/en_US/xml'];
destination = [tempdir(), 'help_tools_typst'];
status = xmldoctotypst(source, destination, 'help_tools')
dir(destination)
``````


== See also

#nlink(<help_tools:xmldocbuild>)[xmldocbuild];, #nlink(<help_tools:buildhelptypst>)[buildhelptypst];, #nlink(<help_tools:xmldoctomd>)[xmldoctomd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
