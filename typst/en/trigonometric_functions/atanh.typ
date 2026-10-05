#import "nelson_help.typ": *

= atanh <trigonometric_functions:atanh>

Computes the inverse hyperbolic tangent.

== Syntax

- #raw("res = atanh(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[atanh]; computes the inverse hyperbolic tangent.


== Example

``````matlab
A =  [1+2i, 2, -3];
res = atanh(A)
``````


== See also

#nlink(<trigonometric_functions:tanh>)[tanh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
