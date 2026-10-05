#import "nelson_help.typ": *

= who <memory_manager:who>

List variables in memory or in .nh5 or in .mat file.

== Syntax

- #raw("who");
- #raw("s = who()");
- #raw("who(scope)");
- #raw("s = who(scope)");
- #raw("who('-file', filename)");
- #raw("s = who('-file', filename)");
- #raw("who(... , var1, ..., varN)");
- #raw("s = who(... , var1, ..., varN)");

== Input argument

/ scope: a string: 'global', 'base', 'caller', 'local' or '-file'.
/ filename: string: an existing filename .nh5 or .mat file.
/ var1, ..., varN: string: variable name.

== Output argument

/ s: a cell of strings: list of variable's name.

== Description

#strong[who]; displays current variable names.


== Example

``````matlab
clear
who
A = 3
b= 3
who
s = who()
``````


== See also

#nlink(<functions_manager:what>)[what];, #nlink(<memory_manager:clear>)[clear];, #nlink(<memory_manager:whos>)[whos];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
