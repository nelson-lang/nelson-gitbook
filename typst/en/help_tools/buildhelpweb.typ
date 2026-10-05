#import "nelson_help.typ": *

= buildhelpweb <help_tools:buildhelpweb>

Build help of Nelson's modules for website.

== Syntax

- #raw("buildhelpweb(destination_dir)");
- #raw("buildhelpweb(destination_dir, language)");

== Input argument

/ destination\_dir: a string: destination directory.
/ language: a string: language. if it is missing, current default language used.

== Description

#strong[buildhelpweb]; generates help files for website.

 internal function


== See also

#nlink(<help_tools:buildhelp>)[buildhelp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
