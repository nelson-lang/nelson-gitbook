#import "nelson_help.typ": *

= rmmissing <data_analysis:rmmissing>

Remove missing data.

== Syntax

- #raw("B = rmmissing(A)");
- #raw("B = rmmissing(A, dim)");

== Input argument

/ A: Input array or table.
/ dim: Dimension to operate along.

== Output argument

/ B: Data with missing rows, columns, or elements removed.

== Description

#strong[rmmissing]; removes missing data from arrays and removes rows or variables containing missing values from tables.


== Examples

``````matlab
A = [1 NaN; 2 3; NaN 4];
B = rmmissing(A)
``````

``````matlab
T = table([1; NaN; 3], {'a'; ''; 'c'}, 'VariableNames', {'A', 'B'});
R = rmmissing(T)
``````


== See also

#nlink(<data_analysis:ismissing>)[ismissing];, #nlink(<data_analysis:fillmissing>)[fillmissing];, #nlink(<data_analysis:standardizeMissing>)[standardizeMissing];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
