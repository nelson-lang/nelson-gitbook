#import "nelson_help.typ": *

= pchip <special_functions:pchip>

Piecewise Cubic Hermite Interpolating Polynomial (PCHIP).

== Syntax

- #raw("yq = pchip(x, y, xq)");
- #raw("pp = pchip(x, y)");

== Input argument

/ x: Sample points, strictly increasing.
/ y: Sample values.
/ xq: Query points.

== Output argument

/ yq: Interpolated values.
/ pp: Piecewise polynomial structure.

== Description

#strong[pchip]; is a convenience function for one-dimensional shape-preserving piecewise cubic Hermite interpolation: the interpolant preserves the monotonicity of the data and does not overshoot.

 With three inputs, #strong[pchip(x, y, xq)]; is equivalent to #strong[interp1(x, y, xq, 'pchip')];.

 With two inputs, it returns a piecewise polynomial structure evaluable with #strong[ppval];.


== Examples

``````matlab
x = -3:3;
y = [-1 -1 -1 0 1 1 1];
xq = -3:0.25:3;
yq = pchip(x, y, xq)
``````

Piecewise polynomial form

``````matlab
x = [0 1 2.5 3.6 5 7 8.1 10];
y = cos(x);
pp = pchip(x, y);
yq = ppval(pp, 0:0.25:10)
``````


== See also

#nlink(<special_functions:interp1>)[interp1];, #nlink(<special_functions:makima>)[makima];, #nlink(<polynomial_functions:ppval>)[ppval];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
