#import "nelson_help.typ": *

= asinh <trigonometric_functions:asinh>

Inverse hyperbolic sine function

== Syntax

- #raw("res = asinh(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[cosh]; computes the inverse hyperbolic sine in radians for each element of #strong[x];.
== Example

``````matlab
A = eye(3, 3);
res = asinh(A)
``````


== See also

#nlink(<trigonometric_functions:asin>)[asin];, #nlink(<trigonometric_functions:sin>)[sin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
