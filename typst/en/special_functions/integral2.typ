#import "nelson_help.typ": *

= integral2 <special_functions:integral2>

Numerically evaluate double integral

== Syntax

- #raw("q = integral2(fun, xmin, xmax, ymin, ymax)");
- #raw("q = integral2(fun, xmin, xmax, ymin, ymax, name, value)");

== Input argument

/ fun: Integrand: function handle of two variables.
/ xmin, xmax: Limits of integration in x: real or infinite scalars.
/ ymin, ymax: Limits of integration in y: real scalars or function handles of x.
/ name, value: One or more name\/value pairs: 'RelativeTolerance', 'AbsoluteTolerance', 'Vectorized', 'Waypoints'.

== Output argument

/ q: Value of the double integral.

== Description

#strong[q \= integral2(fun, xmin, xmax, ymin, ymax)]; numerically integrates the function #strong[fun(x, y)]; over the region #strong[xmin \<\= x \<\= xmax]; and #strong[ymin(x) \<\= y \<\= ymax(x)];.

 The y limits #strong[ymin]; and #strong[ymax]; may be scalars, or function handles of #strong[x]; to describe a non-rectangular region.

 The integration is performed with nested adaptive Gauss-Kronrod quadrature. The name\/value pairs #strong[RelativeTolerance]; (default #strong[1e-6];) and #strong[AbsoluteTolerance]; (default #strong[1e-10];) control the accuracy; the former names #strong[RelTol]; and #strong[AbsTol]; are still accepted.

 By default (#strong[Vectorized]; set to #strong[true];) #strong[fun]; must accept arrays and operate element-wise. Set #strong[Vectorized]; to #strong[false]; when #strong[fun]; accepts only scalar arguments: it is then evaluated point by point, which is slower.

 #strong[Waypoints]; specifies points of interest of the integration region, such as local extrema or discontinuities, that the integrator uses in its initial mesh: a two-column array #strong[\[x y\]]; of points, or a cell array #strong[{x y}]; of grid vectors. The x interval is split at the x values of the waypoints, and each y interval at their y values. Waypoints must be real and finite. Do not use waypoints to specify singularities; split the region instead.


== Examples

``````matlab
q = integral2(@(x, y) x .* y, 0, 1, 0, 1)
``````

``````matlab
q = integral2(@(x, y) x .* y, 0, 1, 0, @(x) x)
``````

Integrand written for scalar inputs

``````matlab
fun = @(x, y) log(x^2 + y^2);
q = integral2(fun, 0, 2, 0, 2, 'Vectorized', false)
``````

Waypoints on the kinks of the integrand (exact value 0.29 \* 0.26)

``````matlab
fun = @(x, y) abs(x - 0.3) .* abs(y - 0.6);
q = integral2(fun, 0, 1, 0, 1, 'Waypoints', [0.3, 0.6])
``````


== See also

#nlink(<special_functions:integral>)[integral];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
  [2.0.0], ['Vectorized' option added: integrate functions written for scalar inputs.],
  [2.0.0], ['AbsoluteTolerance' and 'RelativeTolerance' names added ('AbsTol' and 'RelTol' still accepted).],
  [2.0.0], ['Waypoints' option added: points of interest in the integration region.],
)

// Author: Allan CORNET
