#import "nelson_help.typ": *

= cosh <trigonometric_functions:cosh>

Computes the hyperbolic cosine in radians for each element of x.

== Syntax

- #raw("res = cosh(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[cosh]; computes the hyperbolic cosine in radians for each element of #strong[x];.
== Example

``````matlab
A = eye(3, 3);
res = cosh(A)
``````


== See also

#nlink(<trigonometric_functions:acos>)[acos];, #nlink(<trigonometric_functions:cos>)[cos];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
