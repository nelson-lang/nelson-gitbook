#import "nelson_help.typ": *

= cos <trigonometric_functions:cos>

Computes the cosine in radians for each element of x.

== Syntax

- #raw("res = cos(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[cos]; computes the cosine in radians for each element of #strong[x];.

 The cosine function is defined as:

 #latex("\\cos(x) = \\frac{e^{ix} + e^{-ix}}{2}"); For real arguments, it represents the x-coordinate on the unit circle.


== Example

``````matlab
A = eye(3, 3);
res = cos(A)
``````


== See also

#nlink(<trigonometric_functions:acos>)[acos];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
