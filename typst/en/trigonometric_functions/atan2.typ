#import "nelson_help.typ": *

= atan2 <trigonometric_functions:atan2>

Computes the four-quadrant inverse tangent.

== Syntax

- #raw("res = atan2(y, x)");

== Input argument

/ y: a numeric value (double or single real)
/ x: a numeric value (double or single real)

== Output argument

/ res: a numeric value

== Description

#strong[atan2]; computes the four-quadrant inverse tangent.


== Example

``````matlab
atan2(1, 0)
``````


== See also

#nlink(<trigonometric_functions:atan>)[atan];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
