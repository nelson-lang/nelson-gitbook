#import "nelson_help.typ": *

= csc <trigonometric_functions:csc>

Cosecant of input angle in radians.

== Syntax

- #raw("res = csc(x)");

== Input argument

/ x: a numeric value

== Output argument

/ res: a numeric value

== Description

#strong[csc]; computes the cosecant of argument in radians for each element of #strong[x];.
== Example

``````matlab
R = csc(-pi+0.01:0.01:-0.01)
``````


== See also

#nlink(<trigonometric_functions:cscd>)[cscd];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
