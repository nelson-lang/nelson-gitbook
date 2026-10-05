#import "nelson_help.typ": *

= mustBeBetween <validators:mustBeBetween>

Validate that all elements are within a specified range.

== Syntax

- #raw("mustBeBetween(A, lower, upper)");
- #raw("mustBeBetween(A, lower, upper, intervalType)");
- #raw("mustBeBetween(..., name, value)");
- #raw("mustBeBetween(..., argPosition)");

== Input argument

/ A: array or table to validate.
/ lower, upper: lower and upper bounds.
/ intervalType: 'closed', 'open', 'openleft', 'openright', 'closedleft', or 'closedright'.
/ name, value: For table inputs, supports 'DataVariables'.
/ argPosition: optional positive integer value: position of input argument.

== Description

#strong[mustBeBetween]; raises an error if any selected element of #strong[A]; is outside the interval defined by #strong[lower]; and #strong[upper];. The default interval is closed.


== Examples

``````matlab
mustBeBetween([3 4 5], 0, 5)
mustBeBetween([3 4], 0, 5, 'open')
``````

``````matlab
T = table([2; 3; 4], [10; 11; 12], 'VariableNames', {'A', 'B'});
mustBeBetween(T, 2, 4, 'DataVariables', 'A')
``````


== See also

#nlink(<data_analysis:allbetween>)[allbetween];, #nlink(<data_analysis:isbetween>)[isbetween];, #nlink(<validators:mustBeInRange>)[mustBeInRange];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
