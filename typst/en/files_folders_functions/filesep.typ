#import "nelson_help.typ": *

= filesep <files_folders_functions:filesep>

Return the file separator character for the current platform.

== Syntax

- #raw("res = filesep()");

== Output argument

/ res: a string: '\/' or '\\'

== Description

#strong[pathsep]; returns '\\' on Windows and '\/' on others platforms.
== Example

``````matlab
runnable="cli"A = filesep
``````


== See also

#nlink(<files_folders_functions:pathsep>)[pathsep];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
