#import "nelson_help.typ": *

= acsch <trigonometric_functions:acsch>

Inverse hyperbolic cosecant.

== Syntax

- #raw("res = acsch(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[acsch]; computes the inverse hyperbolic cosecant for each element of #strong[x];.
== Example

``````matlab
X = [3*pi, 2*pi, pi, 0];
R = acsch(X)
``````


== See also

#nlink(<trigonometric_functions:csch>)[csch];, #nlink(<trigonometric_functions:sinh>)[sinh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
