#import "nelson_help.typ": *

= spline <special_functions:spline>

Cubic spline interpolation.

== Syntax

- #raw("yq = spline(x, y, xq)");
- #raw("pp = spline(x, y)");

== Input argument

/ x: Sample points.
/ y: Sample values.
/ xq: Query points.

== Output argument

/ yq: Interpolated values.
/ pp: Piecewise polynomial structure.

== Description

#strong[spline]; evaluates a not-a-knot cubic spline or returns its piecewise polynomial form.


== Example

``````matlab
yq = spline(1:4, [0 1 0 1], [1.5 2.5])
``````


== See also

#nlink(<special_functions:interp1>)[interp1];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
