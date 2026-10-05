#import "nelson_help.typ": *

= acsc <trigonometric_functions:acsc>

Inverse cosecant in radians.

== Syntax

- #raw("res = acsc(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[acsc]; computes the inverse cosecant of argument in radians for each element of #strong[x];.
== Example

``````matlab
R = acsc(3)
R = acsc(0.5)
``````


== See also

#nlink(<trigonometric_functions:cscd>)[cscd];, #nlink(<trigonometric_functions:csc>)[csc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
