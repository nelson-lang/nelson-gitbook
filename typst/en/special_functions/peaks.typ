#import "nelson_help.typ": *

= peaks <special_functions:peaks>

Peaks function

== Syntax

- #raw("Z = peaks()");
- #raw("Z = peaks(n)");
- #raw("Z = peaks(Xi, Yi)");
- #raw("[X, Y, Z] = peaks()");
- #raw("[X, Y, Z] = peaks(n)");
- #raw("[X, Y, Z] = peaks(Xi, Yi)");

== Input argument

/ n: Value representing 2-D grid: scalar or vector.
/ Xi: x-coordinates of points.
/ Yi: y-coordinates of points.

== Output argument

/ X: x-coordinates of points.
/ Y: y-coordinates of points.
/ Z: z-coordinates of points.

== Description

#strong[peaks]; function has the form:

 #strong[f(x, y) \= 3\*(1-x)^2\*exp(-x^2 - (y+1)^2) - 10\*(x\/5 - x^3 - y^5)\*exp(-x^2-y^2) - 1\/3\*exp(-(x+1)^2 - y^2)];


== Example

``````matlab
x = -2:0.5:2;
y = 1:0.2:2;
[X, Y] = meshgrid(x, y);
Z = peaks(X, Y)

``````


== See also

#nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
