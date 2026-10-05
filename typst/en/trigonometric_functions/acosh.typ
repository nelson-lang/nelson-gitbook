#import "nelson_help.typ": *

= acosh <trigonometric_functions:acosh>

Inverse hyperbolic cosine.

== Syntax

- #raw("res = acosh(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[acosh]; computes the inverse hyperbolic cosine.


== Example

``````matlab
A =  [1+2i, 2, -3];
res = acosh(A)
``````


== See also

#nlink(<trigonometric_functions:cosh>)[cosh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
