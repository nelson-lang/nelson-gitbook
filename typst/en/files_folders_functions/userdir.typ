#import "nelson_help.typ": *

= userdir <files_folders_functions:userdir>

Returns the current user's path.

== Syntax

- #raw("userdir()");
- #raw("p = userdir()");

== Output argument

/ p: a string: current user directory.

== Description

Returns the name of the user's directory.


== Example

``````matlab
r = userdir()
``````


== See also

#nlink(<files_folders_functions:cd>)[cd];, #nlink(<files_folders_functions:dir>)[dir];, #nlink(<files_folders_functions:tempdir>)[tempdir];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
