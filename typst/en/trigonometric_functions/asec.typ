#import "nelson_help.typ": *

= asec <trigonometric_functions:asec>

Inverse secant of angle in radians.

== Syntax

- #raw("res = asec(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[asec]; computes the inverse secant of argument in radians for each element of #strong[x];.
== Example

``````matlab
x = -pi:0.75:pi;
R = asec(x)
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
