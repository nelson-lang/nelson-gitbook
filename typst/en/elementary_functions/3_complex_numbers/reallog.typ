#import "../nelson_help.typ": *

= reallog <elementary_functions:3_complex_numbers.reallog>

Natural logarithm with real-only result.

== Syntax

- #raw("R = reallog(X)");

== Input argument

/ X: input array.

== Output argument

/ R: Natural logarithm with real-only result.

== Description

#strong[reallog]; computes log(X) and returns an error if an input or the result is complex.


== Example

``````matlab
x = [1 2 4];
R = reallog(x)
``````


== See also

#nlink(<elementary_functions:2_elementary_math.log>)[log];, #nlink(<elementary_functions:3_complex_numbers.realsqrt>)[realsqrt];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
