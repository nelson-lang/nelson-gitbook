#import "nelson_help.typ": *

= tempdir <files_folders_functions:tempdir>

Returns the temporary directory path.

== Syntax

- #raw("tempdir()");
- #raw("p = tempdir()");

== Output argument

/ p: a string: current temporary directory.

== Description

Returns the name of the host system’s directory for temporary files.


== Example

``````matlab
r = tempdir()
``````


== See also

#nlink(<files_folders_functions:cd>)[cd];, #nlink(<files_folders_functions:dir>)[dir];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
