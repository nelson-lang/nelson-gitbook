#import "nelson_help.typ": *

= isbetween <data_analysis:isbetween>

Determine array elements between lower and upper bounds.

== Syntax

- #raw("TF = isbetween(A, lower, upper)");
- #raw("TF = isbetween(A, lower, upper, intervalType)");
- #raw("TF = isbetween(..., name, value)");

== Input argument

/ A: array or table.
/ lower, upper: lower and upper bounds.
/ intervalType: 'closed', 'open', 'openleft', 'openright', 'closedleft', or 'closedright'.
/ name, value: For table inputs, supports 'DataVariables' and 'OutputFormat'.

== Output argument

/ TF: logical array or logical table.

== Description

#strong[isbetween]; returns true where #strong[A]; is inside the interval defined by #strong[lower]; and #strong[upper];. The default interval is closed.


== Examples

``````matlab
A = [1 2 3 4 5];
isbetween(A, 2, 4)
isbetween(A, 2, 4, 'open')
``````

``````matlab
T = table([1; 2; 3], [4; 5; 6], 'VariableNames', {'A', 'B'});
isbetween(T, 2, 5)
isbetween(T, 2, 5, 'DataVariables', 'B', 'OutputFormat', 'tabular')
``````


== See also

#nlink(<data_analysis:allbetween>)[allbetween];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
