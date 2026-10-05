#import "nelson_help.typ": *

= atan2d <trigonometric_functions:atan2d>

Four-quadrant inverse tangent in degrees.

== Syntax

- #raw("d = atan2d(y, x)");

== Input argument

/ y: a numeric value
/ x: a numeric value

== Output argument

/ d: a numeric value

== Description

#strong[d \= atan2d(y, x)]; returns the four-quadrant inverse tangent (tan-1) of #strong[y]; and #strong[x];, which must be real.


== Example

``````matlab
x = [1 0 -1 0];
y = [0 1 0 -1];
d = atan2d(y, x)
``````


== See also

#nlink(<trigonometric_functions:tand>)[tand];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
