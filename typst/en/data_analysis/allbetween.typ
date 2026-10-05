#import "nelson_help.typ": *

= allbetween <data_analysis:allbetween>

Determine whether all array elements are between lower and upper bounds.

== Syntax

- #raw("tf = allbetween(A, lower, upper)");
- #raw("tf = allbetween(A, lower, upper, intervalType)");
- #raw("tf = allbetween(..., name, value)");

== Input argument

/ A: array or table.
/ lower, upper: lower and upper bounds.
/ intervalType: 'closed', 'open', 'openleft', 'openright', 'closedleft', or 'closedright'.

== Output argument

/ tf: logical scalar.

== Description

#strong[allbetween]; returns true if every selected element of #strong[A]; is inside the interval defined by #strong[lower]; and #strong[upper];.


== Examples

``````matlab
A = [2 3 4];
allbetween(A, 2, 4)
allbetween(A, 2, 4, 'open')
``````

``````matlab
T = table([2; 3; 4], [10; 11; 12], 'VariableNames', {'A', 'B'});
allbetween(T, 2, 4, 'DataVariables', 'A')
allbetween(T, 2, 12, 'DataVariables', {'A', 'B'})
``````


== See also

#nlink(<data_analysis:isbetween>)[isbetween];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
