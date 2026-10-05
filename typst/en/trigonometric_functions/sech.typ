#import "nelson_help.typ": *

= sech <trigonometric_functions:sech>

Hyperbolic secant.

== Syntax

- #raw("res = sech(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[sech]; computes the Hyperbolic secant for each element of #strong[x];.


== Example

``````matlab
X = [3*pi, 2*pi, pi, 0];
R = sech(X)
``````


== See also

#nlink(<trigonometric_functions:cosh>)[cosh];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
