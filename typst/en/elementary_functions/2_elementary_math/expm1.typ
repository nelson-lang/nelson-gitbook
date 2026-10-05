#import "../nelson_help.typ": *

= expm1 <elementary_functions:2_elementary_math.expm1>

Compute exp(x) - 1.

== Syntax

- #raw("R = expm1(X)");

== Input argument

/ X: input array.

== Output argument

/ R: Compute exp(x) - 1.

== Description

#strong[expm1]; computes exp(X) - 1 element by element.


== Example

``````matlab
x = [-1 0 1];
R = expm1(x)
``````


== See also

#nlink(<elementary_functions:2_elementary_math.exp>)[exp];, #nlink(<elementary_functions:2_elementary_math.log1p>)[log1p];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
