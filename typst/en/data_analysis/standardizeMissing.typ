#import "nelson_help.typ": *

= standardizeMissing <data_analysis:standardizeMissing>

Convert indicator values to standard missing values.

== Syntax

- #raw("B = standardizeMissing(A, indicators)");

== Input argument

/ A: Input array or table.
/ indicators: Values to treat as missing.

== Output argument

/ B: Data with standardized missing values.

== Description

#strong[standardizeMissing]; replaces indicator values with standard missing values such as NaN for numeric variables.


== Example

``````matlab
T = table([1; -99; 3], 'VariableNames', {'A'});
R = standardizeMissing(T, -99)
``````


== See also

#nlink(<data_analysis:fillmissing>)[fillmissing];, #nlink(<data_analysis:rmmissing>)[rmmissing];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
