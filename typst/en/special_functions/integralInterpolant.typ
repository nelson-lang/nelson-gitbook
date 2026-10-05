#import "nelson_help.typ": *

= integralInterpolant <special_functions:integralInterpolant>

Definite integral with variable upper limit (integral interpolant object)

== Syntax

- #raw("F = integralInterpolant(integrand, lower, upper)");
- #raw("F = integralInterpolant(integrand, lower, upper, name, value)");
- #raw("Fq = F(xq)");

== Input argument

/ integrand: function handle of the integrand, with the same requirements as for #strong[integral];.
/ lower: lower limit of integration: real scalar, finite or infinite.
/ upper: upper limit of integration: real scalar, finite or infinite, different from #strong[lower];. It can be less than #strong[lower]; (backward integration).
/ name, value: one or more name\/value pairs: 'AbsoluteTolerance' (default 1e-10), 'RelativeTolerance' (default 1e-6), 'ArrayValued' (default false), 'Vectorized' (default true), 'Waypoints' (vector of real points used in the initial mesh).
/ xq: real numeric array of query points.

== Output argument

/ F: an integralInterpolant object.
/ Fq: values of the integral from #strong[lower]; to each query point: an array of the size of #strong[xq];, or, when #strong[ArrayValued]; is true, an array with one row per query point.

== Description

#strong[integralInterpolant]; evaluates a definite integral with a variable upper limit: the returned object #strong[F]; gives #strong[F(x)];, the integral of #strong[integrand]; from #strong[lower]; to #strong[x];, for any #strong[x]; between #strong[lower]; and #strong[upper];.

 The integral from #strong[lower]; to #strong[upper]; is computed once with the adaptive Gauss-Kronrod quadrature of #strong[integral];. Querying #strong[F(xq)]; adds the partial sums of the mesh intervals located before each query point to the Gauss-Kronrod rule applied on the part of the interval that contains it, so the queried values have the accuracy of the integral. Query points outside the integration interval return #strong[NaN];.

 The object has the read-only properties #strong[Integrand];, #strong[LowerLimit];, #strong[UpperLimit];, #strong[Integral]; (value of the integral from #strong[lower]; to #strong[upper];), #strong[ErrorBound]; (approximate upper bound on the absolute error), #strong[AbsoluteTolerance];, #strong[RelativeTolerance]; and #strong[Subintervals]; (row vector of the mesh points, from #strong[lower]; to #strong[upper];, including the waypoints). #strong[F(F.Subintervals)]; returns the partial sums of the integral.

 Specify discontinuities of the integrand as #strong[Waypoints];. Do not use waypoints to specify singularities at the integration limits. For faster but less accurate evaluations, sample #strong[F]; and build a #strong[griddedInterpolant];.


== Examples

Integral of 1 + cos(x)^2 with a variable upper limit.

``````matlab
f = @(x) 1 + cos(x).^2;
F = integralInterpolant(f, 0, 5)
xq = linspace(1, 3, 5);
Fq = F(xq)
``````

Improper integral.

``````matlab
f = @(x) x.^5 .* exp(-x) .* sin(x);
F = integralInterpolant(f, 0, Inf, 'RelativeTolerance', 1e-8, 'AbsoluteTolerance', 1e-13);
Fq = F([0 Inf])
``````

Partial sums of an array-valued integrand.

``````matlab
k = 1:5;
f = @(x) sin(k * x);
F = integralInterpolant(f, 0, 1, 'ArrayValued', true);
partialSums = F(F.Subintervals(end-5:end))
``````

Conversion to a gridded interpolant.

``````matlab
f = @(x) x.^x;
F = integralInterpolant(f, 1, 2);
x = linspace(1, 2, 11);
G = griddedInterpolant(x, F(x), 'cubic');
Fq = F(1.88)
Gq = G(1.88)
``````


== See also

#nlink(<special_functions:integral>)[integral];, #nlink(<linear_algebra:1_linear_systems.cumtrapz>)[cumtrapz];, #nlink(<special_functions:griddedInterpolant>)[griddedInterpolant];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
