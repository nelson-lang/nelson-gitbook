#import "nelson_help.typ": *

= sin <trigonometric_functions:sin>

Computes the sine in radians for each element of x.

== Syntax

- #raw("res = sin(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[sin]; computes the sine in radians for each element of #strong[x];.

 The sine function is defined as:

 #latex("\\sin(x) = \\frac{e^{ix} - e^{-ix}}{2i}"); For real arguments, it represents the y-coordinate on the unit circle.


== Example

``````matlab
A = eye(3, 3);
res = sin(A)
``````


== See also

#nlink(<trigonometric_functions:asin>)[asin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
