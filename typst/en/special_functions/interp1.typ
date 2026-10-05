#import "nelson_help.typ": *

= interp1 <special_functions:interp1>

1-D data interpolation

== Syntax

- #raw("vq = interp1(x, v, xq)");
- #raw("vq = interp1(x, v, xq, method)");
- #raw("vq = interp1(x, v, xq, method, extrapolation)");
- #raw("vq = interp1(v, xq)");
- #raw("vq = interp1(v, xq, method)");
- #raw("vq = interp1(v, xq, method, extrapolation)");
- #raw("pp = interp1(x, v, method, 'pp')");

== Input argument

/ x: Sample points: vector.
/ v: Sample values: vector, matrix.
/ xq: Query points: scalar, vector, matrix.
/ method: Interpolation method: 'linear', 'nearest', 'next', 'previous', 'pchip', 'cubic', 'makima', or 'spline'.
/ extrapolation: 'extrap' or a scalar value.

== Output argument

/ vq: Interpolated values: scalar, vector, matrix.

== Description

#strong[vq \= interp1(x, v, xq)]; returns interpolated values of a 1-D function at specific query points. The default method is linear interpolation.

 #strong[pp \= interp1(x, v, method, 'pp')]; returns a piecewise polynomial structure that can be evaluated with #strong[ppval];.


== Bibliography

de Boor, C., A Practical Guide to Splines, Springer-Verlag, 1978.

== Example

``````matlab
f = figure();
v = [0  1.41  2  1.41  0  -1.41  -2  -1.41 0];
xq = 1.5:8.5;
vq = interp1(v,xq);
plot(1:9, v, 'o', xq, vq, '*');
legend('v','vq');
``````


#align(center)[#image("interp1.svg")]

== See also

#nlink(<special_functions:interp2>)[interp2];, #nlink(<special_functions:interp3>)[interp3];, #nlink(<special_functions:interpn>)[interpn];, #nlink(<polynomial_functions:ppval>)[ppval];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
