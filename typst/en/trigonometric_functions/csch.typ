#import "nelson_help.typ": *

= csch <trigonometric_functions:csch>

Hyperbolic cosecant.

== Syntax

- #raw("res = csch(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[csch]; computes the hyperbolic cosecant for each element of #strong[x];.


== Example

``````matlab
X = [3*pi, 2*pi, pi, 0];
R = csch(X)
``````


== See also

#nlink(<trigonometric_functions:cosh>)[cosh];, #nlink(<trigonometric_functions:sinh>)[sinh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
