#import "nelson_help.typ": *

= whos <memory_manager:whos>

List variables in memory or in .nh5 or in .mat file with sizes and types.

== Syntax

- #raw("whos");
- #raw("s = whos()");
- #raw("whos(scope)");
- #raw("s = whos(scope)");
- #raw("whos('-file', filename)");
- #raw("s = whos('-file', filename)");
- #raw("whos(... , var1, ..., varN)");
- #raw("s = whos(... , var1, ..., varN)");

== Input argument

/ scope: a string: 'global', 'base', 'caller', 'local'.
/ var1, ..., varN: a string: variable name.
/ filename: string: an existing filename .nh5 or .mat file.

== Output argument

/ st: stores information about the variables in the structure array s.

== Description

#strong[whos]; displays current variable names in memory or in .nh5 or .mat file.


== Example

``````matlab
clear
whos
A = 3
b= 3
whos
s = whos()
save([tempdir(), 'example_who.nh5'], 'A', 'b')
whos([tempdir(), 'example_who.nh5'])

``````


== See also

#nlink(<functions_manager:what>)[what];, #nlink(<memory_manager:clear>)[clear];, #nlink(<memory_manager:who>)[who];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
