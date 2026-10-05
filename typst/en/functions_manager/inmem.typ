#import "nelson_help.typ": *

= inmem <functions_manager:inmem>

Names of functions, MEX-files.

== Syntax

- #raw("F = inmem()");
- #raw("[F, M] = inmem()");
- #raw("F = inmem('-completenames')");
- #raw("[F, M] = inmem('-completenames')");

== Input argument

/ '-completenames': a string: mex function name.

== Output argument

/ F: cell array of character vectors containing the names of the macros that are loaded.
/ M: cell array of character vectors containing the names of the mex that are loaded.

== Description

#strong[inmem]; returns cells array of names of functions and mex currently loaded.


== Example

``````matlab
clear all
tand(3)
inmem()
inmem('-completenames')

``````


== See also

#nlink(<memory_manager:clear>)[clear];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
