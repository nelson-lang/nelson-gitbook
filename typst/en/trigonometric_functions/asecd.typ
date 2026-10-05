#import "nelson_help.typ": *

= asecd <trigonometric_functions:asecd>

Inverse secant of argument in degrees.

== Syntax

- #raw("res = asecd(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[asecd]; computes the inverse secant of argument in degrees for each element of #strong[x];.
== Example

``````matlab
R = asecd([1, 10+3i, 15+2i, 35+i])
``````


== See also

#nlink(<trigonometric_functions:asec>)[asec];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
