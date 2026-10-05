#import "../nelson_help.typ": *

= realsqrt <elementary_functions:3_complex_numbers.realsqrt>

Square root with real-only result.

== Syntax

- #raw("R = realsqrt(X)");

== Input argument

/ X: input array.

== Output argument

/ R: Square root with real-only result.

== Description

#strong[realsqrt]; computes sqrt(X) and returns an error if an input or the result is complex.


== Example

``````matlab
x = [1 4 9];
R = realsqrt(x)
``````


== See also

#nlink(<elementary_functions:2_elementary_math.sqrt>)[sqrt];, #nlink(<elementary_functions:3_complex_numbers.reallog>)[reallog];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
