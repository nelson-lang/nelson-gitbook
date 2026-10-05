#import "nelson_help.typ": *

= fullfile <files_folders_functions:fullfile>

Build full file name from parts.

== Syntax

- #raw("R = fullfile(part1, ... , partN)");

== Input argument

/ part1, ... , partN: a string or cell of string: filename to concat.

== Output argument

/ R: a character array or string array or cell array of character vectors.

== Description

#strong[R \= fullfile(part1, ... , partN)]; build full file name from parts.


== Example

``````matlab
fullfile([nelsonroot(), '/./toto'])
``````


== See also

#nlink(<files_folders_functions:fullpath>)[fullpath];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
