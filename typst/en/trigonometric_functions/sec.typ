#import "nelson_help.typ": *

= sec <trigonometric_functions:sec>

Secant of angle in radians.

== Syntax

- #raw("res = sec(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[sec]; computes the secant of argument in radians for each element of #strong[x];.
== Example

``````matlab
x = -pi:0.75:pi;
R = sec(x)
``````


== See also

#nlink(<trigonometric_functions:secd>)[secd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
