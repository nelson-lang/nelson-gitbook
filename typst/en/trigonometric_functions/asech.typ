#import "nelson_help.typ": *

= asech <trigonometric_functions:asech>

Inverse hyperbolic secant of angle in radians.

== Syntax

- #raw("res = asech(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[asech]; computes the inverse hyperbolic secant of argument in radians for each element of #strong[x];.
== Example

``````matlab
x = -pi:0.75:pi;
R = asech(x)
``````


== See also

#nlink(<trigonometric_functions:secd>)[secd];, #nlink(<trigonometric_functions:sec>)[sec];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
