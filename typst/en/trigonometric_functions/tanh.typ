#import "nelson_help.typ": *

= tanh <trigonometric_functions:tanh>

Computes the hyperbolic tangent in radians for each element of x.

== Syntax

- #raw("res = tanh(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[tanh]; computes the hyperbolic tangent in radians for each element of #strong[x];.
== Example

``````matlab
A = eye(3, 3);
res = tanh(A)
``````


== See also

#nlink(<trigonometric_functions:atan>)[atan];, #nlink(<trigonometric_functions:atan>)[tanh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
