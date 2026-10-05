#import "nelson_help.typ": *

= secd <trigonometric_functions:secd>

Secant of argument in degrees.

== Syntax

- #raw("res = secd(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[secd]; computes the secant of argument in degrees for each element of #strong[x];.
== Example

``````matlab
R = secd([1, 10+3i, 15+2i, 35+i])
``````


== See also

#nlink(<trigonometric_functions:sec>)[sec];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
