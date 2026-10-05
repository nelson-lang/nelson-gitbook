#import "nelson_help.typ": *

= makima <special_functions:makima>

Modified Akima piecewise cubic interpolation.

== Syntax

- #raw("yq = makima(x, y, xq)");
- #raw("pp = makima(x, y)");

== Input argument

/ x: Sample points.
/ y: Sample values.
/ xq: Query points.

== Output argument

/ yq: Interpolated values.
/ pp: Piecewise polynomial structure.

== Description

#strong[makima]; is a convenience function for one-dimensional modified Akima interpolation.

 With two inputs, it returns a piecewise polynomial structure evaluable with #strong[ppval];.


== Example

``````matlab
x = [0 1 2.5 3.6 5 7 8.1 10];
y = cos(x);
yq = makima(x, y, 0:0.25:10)
``````


== See also

#nlink(<special_functions:interp1>)[interp1];, #nlink(<special_functions:pchip>)[pchip];, #nlink(<polynomial_functions:ppval>)[ppval];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
