#import "nelson_help.typ": *

= tan <trigonometric_functions:tan>

Computes the tangent in radians for each element of x.

== Syntax

- #raw("res = tan(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[tan]; computes the tangent in radians for each element of #strong[x];.

 The tangent function is defined as:

 #latex("\\tan(x) = \\frac{\\sin(x)}{\\cos(x)} = \\frac{e^{ix} - e^{-ix}}{i(e^{ix} + e^{-ix})}"); It has vertical asymptotes at

 #latex("x = \\frac{\\pi}{2} + n\\pi"); for integer #strong[n];.


== Example

``````matlab
A = eye(3, 3);
res = tan(A)
``````


== See also

#nlink(<trigonometric_functions:atan>)[atan];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
