#import "nelson_help.typ": *

= acot <trigonometric_functions:acot>

Inverse cotangent of angle in radians

== Syntax

- #raw("res = acot(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[acot]; computes the inverse cotangent of angle for each element of #strong[x];.
== Example

``````matlab
R = acot([-i pi+i*pi/2 -1+i*4])
``````


== See also

#nlink(<trigonometric_functions:coth>)[coth];, #nlink(<trigonometric_functions:acoth>)[acoth];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
