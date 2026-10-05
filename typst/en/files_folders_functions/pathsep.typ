#import "nelson_help.typ": *

= pathsep <files_folders_functions:pathsep>

Return the search path separator character for the current platform.

== Syntax

- #raw("res = pathsep()");

== Output argument

/ res: a string: ';' or ':'

== Description

#strong[pathsep]; returns ';' on Windows and ':' on others platforms.
== Example

``````matlab
A = pathsep
``````


== See also

#nlink(<files_folders_functions:filesep>)[filesep];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
