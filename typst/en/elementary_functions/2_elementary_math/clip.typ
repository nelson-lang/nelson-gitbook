#import "../nelson_help.typ": *

= clip <elementary_functions:2_elementary_math.clip>

Limit values to a range.

== Syntax

- #raw("Y = clip(X, lowerBound, upperBound)");

== Input argument

/ X: a numeric or logical array.
/ lowerBound: a numeric scalar: lower limit of the range.
/ upperBound: a numeric scalar: upper limit of the range.

== Output argument

/ Y: the clipped array, same size as X.

== Description

#strong[clip]; limits the values of #strong[X]; to the interval #strong[\[lowerBound, upperBound\]];.

 Values smaller than #strong[lowerBound]; are set to #strong[lowerBound]; and values greater than #strong[upperBound]; are set to #strong[upperBound];.

 #strong[NaN]; values in a floating-point input are preserved.


== Example

``````matlab
Y = clip([-2 0 5 10], 0, 8)
``````


== See also

#nlink(<data_analysis:min>)[min];, #nlink(<data_analysis:max>)[max];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.13.0], [initial version],
)

// Author: Allan CORNET
