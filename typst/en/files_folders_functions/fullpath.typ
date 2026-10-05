#import "nelson_help.typ": *

= fullpath <files_folders_functions:fullpath>

Returns canonical full path.

== Syntax

- #raw("R = fullpath(path)");

== Input argument

/ path: a string or cell of string: filename to normalize.

== Output argument

/ R: a string or cell of string: canonical paths.

== Description

#strong[fullpath(path)]; returns full path from a relative path.


== Example

``````matlab
fullpath([nelsonroot(), '/../toto'])
``````


== See also

#nlink(<files_folders_functions:relativepath>)[relativepath];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
