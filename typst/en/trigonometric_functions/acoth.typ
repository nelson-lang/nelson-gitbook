#import "nelson_help.typ": *

= acoth <trigonometric_functions:acoth>

Inverse hyperbolic cotangent.

== Syntax

- #raw("res = acoth(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[acoth]; computes the inverse hyperbolic cotangent.


== Example

``````matlab
A =  [1+2i, 2, -3];
res = acoth(A)
``````


== See also

#nlink(<trigonometric_functions:coth>)[coth];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
