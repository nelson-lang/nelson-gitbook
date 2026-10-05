#import "nelson_help.typ": *

= acotd <trigonometric_functions:acotd>

Inverse cotangent of angle in degrees

== Syntax

- #raw("res = acotd(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[acotd]; computes the inverse cotangent of angle for each element of #strong[x]; in degrees.
== Example

``````matlab
R = acotd([-i pi+i*pi/2 -1+i*4])
``````


== See also

#nlink(<trigonometric_functions:acot>)[acot];, #nlink(<trigonometric_functions:acoth>)[acoth];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
