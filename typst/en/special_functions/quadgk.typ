#import "nelson_help.typ": *

= quadgk <special_functions:quadgk>

Numerically evaluate an integral with Gauss-Kronrod quadrature.

== Syntax

- #raw("q = quadgk(fun, a, b)");
- #raw("[q, errbnd] = quadgk(fun, a, b)");
- #raw("[...] = quadgk(fun, a, b, name, value)");

== Input argument

/ fun: Integrand: function handle.
/ a, b: Integration limits. Finite complex limits are supported through straight-line contour segments.
/ name, value: Options: 'RelTol', 'AbsTol', 'Waypoints', and 'MaxIntervalCount'.

== Output argument

/ q: Computed integral.
/ errbnd: Approximate absolute error bound.

== Description

#strong[quadgk]; integrates a vectorized scalar integrand using adaptive Gauss-Kronrod quadrature.

 #strong[Waypoints]; split the integral into subintervals. Complex waypoints define a piecewise straight contour.


== Examples

``````matlab
[q, errbnd] = quadgk(@(x) exp(-x.^2), 0, Inf)
``````

``````matlab
q = quadgk(@(z) 1 ./ (2 .* z - 1), 1, 1, 'Waypoints', [1 + 1i, 0 + 1i, 0 - 1i, 1 - 1i])
``````


== See also

#nlink(<special_functions:integral>)[integral];, #nlink(<special_functions:integral2>)[integral2];, #nlink(<special_functions:integral3>)[integral3];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
