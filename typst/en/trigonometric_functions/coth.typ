#import "nelson_help.typ": *

= coth <trigonometric_functions:coth>

Hyperbolic cotangent.

== Syntax

- #raw("res = coth(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[csch]; computes the hyperbolic cotangent for each element of #strong[x];.


== Example

``````matlab
X = [3*pi, 2*pi, pi, 0];
R = coth(X)
``````


== See also

#nlink(<trigonometric_functions:tanh>)[tanh];, #nlink(<trigonometric_functions:cot>)[cot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
