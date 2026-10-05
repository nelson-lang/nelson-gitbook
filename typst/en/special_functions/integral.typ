#import "nelson_help.typ": *

= integral <special_functions:integral>

Numerically evaluate integral (adaptive quadrature)

== Syntax

- #raw("q = integral(fun, a, b)");
- #raw("q = integral(fun, a, b, name, value)");

== Input argument

/ fun: Integrand: function handle.
/ a: Lower limit of integration: real scalar (finite or infinite) or finite complex scalar.
/ b: Upper limit of integration: real scalar (finite or infinite) or finite complex scalar.
/ name, value: One or more name\/value pairs: 'RelativeTolerance', 'AbsoluteTolerance', 'ArrayValued', 'Vectorized', 'Waypoints'.

== Output argument

/ q: Value of the integral.

== Description

#strong[q \= integral(fun, a, b)]; numerically integrates the function #strong[fun]; from #strong[a]; to #strong[b]; using global adaptive Gauss-Kronrod quadrature.

 By default #strong[fun]; is assumed to be vectorized: it must accept a vector of abscissae and return a vector of the same size.

 The limits #strong[a]; and #strong[b]; may be infinite (#strong[-Inf]; and\/or #strong[Inf];); a change of variable maps the interval to a finite one.

 If #strong[a];, #strong[b]; or a waypoint is complex, #strong[integral]; computes the path integral along the straight lines joining #strong[a];, the waypoints in the given order, and #strong[b];. Complex limits and waypoints must be finite.

 The following name\/value pairs are supported:

 #strong[RelativeTolerance]; (or #strong[RelTol];): relative error tolerance (default #strong[1e-6];).

 #strong[AbsoluteTolerance]; (or #strong[AbsTol];): absolute error tolerance (default #strong[1e-10];).

 #strong[integral]; attempts to satisfy #strong[abs(q - Q) \<\= max(AbsoluteTolerance, RelativeTolerance \* abs(q))]; where #strong[Q]; is the exact value.

 #strong[ArrayValued];: when #strong[true];, #strong[fun]; returns an array and is evaluated at a scalar abscissa (default #strong[false];).

 #strong[Vectorized];: when #strong[false];, #strong[fun]; is written for scalar inputs: it accepts a scalar #strong[x]; and returns a scalar, and #strong[integral]; evaluates it point by point (default #strong[true];, faster). Ignored when #strong[ArrayValued]; is #strong[true];.

 #strong[Waypoints];: vector of finite real or complex points used in the initial mesh. With real limits and real waypoints, the interval is split at the waypoints lying inside it (their order does not matter): use them to mark discontinuities or local extrema of the integrand. Do not use waypoints to specify singularities; split the interval instead. Complex waypoints define a piecewise linear contour.


== Examples

``````matlab
q = integral(@(x) x.^2, 0, 1)
``````

``````matlab
q = integral(@(x) exp(-x.^2), 0, Inf)
``````

``````matlab
q = integral(@(x) [1; 1] .* x, 0, 1, 'ArrayValued', true)
``````

Singularity at the lower limit: tighter tolerances

``````matlab
format long
q1 = integral(@log, 0, 1)
q2 = integral(@log, 0, 1, 'AbsoluteTolerance', 1e-12, 'RelativeTolerance', 0)
format short
``````

Integral of a function written for scalar inputs

``````matlab
fun = @(x) 2*x - x^2;
q = integral(fun, 0, 1, 'Vectorized', false)
``````

Complex contour integration using waypoints (closed path around the pole z \= 1\/2)

``````matlab
fun = @(z) 1 ./ (2*z - 1);
q = integral(fun, 0, 0, 'Waypoints', [1+1i, 1-1i])
``````


== See also

#nlink(<special_functions:integral2>)[integral2];, #nlink(<special_functions:integralInterpolant>)[integralInterpolant];, #nlink(<linear_algebra:1_linear_systems.trapz>)[trapz];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
  [2.0.0], ['Waypoints' option and complex limits (contour integration) added.],
  [2.0.0], ['Vectorized' option added: integrate functions written for scalar inputs.],
  [2.0.0], ['AbsoluteTolerance' and 'RelativeTolerance' names added ('AbsTol' and 'RelTol' still accepted).],
)

// Author: Allan CORNET
