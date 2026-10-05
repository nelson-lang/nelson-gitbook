#import "nelson_help.typ": *

= dbstack <debugger:dbstack>

call stack.

== Syntax

- #raw("dbstack");
- #raw("st = dbstack()");
- #raw("dbstack('-completenames')");
- #raw("st = dbstack('-completenames')");
- #raw("dbstack('-completenames', omit)");
- #raw("st = dbstack('-completenames', omit)");

== Input argument

/ omit: an integer value: Number of frames to omit (must be positive).

== Output argument

/ st: a struct

== Description

#strong[dbstack]; displays the file names and line numbers of the function calls.

 #strong[dbstack('-completenames')]; displays the full file names.


== Example

Creates a myfun.m and calls it.

``````matlab
function myfun(x)
dbstack();
end
``````


== See also

#nlink(<functions_manager:which>)[which];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
