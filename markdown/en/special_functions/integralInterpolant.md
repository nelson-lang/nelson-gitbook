# integralInterpolant

Definite integral with variable upper limit (integral interpolant object)

## 📝 Syntax

- F = integralInterpolant(integrand, lower, upper)
- F = integralInterpolant(integrand, lower, upper, name, value)
- Fq = F(xq)

## 📥 Input argument

- integrand - function handle of the integrand, with the same requirements as for <b>integral</b>.
- lower - lower limit of integration: real scalar, finite or infinite.
- upper - upper limit of integration: real scalar, finite or infinite, different from <b>lower</b>. It can be less than <b>lower</b> (backward integration).
- name, value - one or more name/value pairs: 'AbsoluteTolerance' (default 1e-10), 'RelativeTolerance' (default 1e-6), 'ArrayValued' (default false), 'Vectorized' (default true), 'Waypoints' (vector of real points used in the initial mesh).
- xq - real numeric array of query points.

## 📤 Output argument

- F - an integralInterpolant object.
- Fq - values of the integral from <b>lower</b> to each query point: an array of the size of <b>xq</b>, or, when <b>ArrayValued</b> is true, an array with one row per query point.

## 📄 Description

<b>integralInterpolant</b> evaluates a definite integral with a variable upper limit: the returned object <b>F</b> gives <b>F(x)</b>, the integral of <b>integrand</b> from <b>lower</b> to <b>x</b>, for any <b>x</b> between <b>lower</b> and <b>upper</b>.

The integral from <b>lower</b> to <b>upper</b> is computed once with the adaptive Gauss-Kronrod quadrature of <b>integral</b>. Querying <b>F(xq)</b> adds the partial sums of the mesh intervals located before each query point to the Gauss-Kronrod rule applied on the part of the interval that contains it, so the queried values have the accuracy of the integral. Query points outside the integration interval return <b>NaN</b>.

The object has the read-only properties <b>Integrand</b>, <b>LowerLimit</b>, <b>UpperLimit</b>, <b>Integral</b> (value of the integral from <b>lower</b> to <b>upper</b>), <b>ErrorBound</b> (approximate upper bound on the absolute error), <b>AbsoluteTolerance</b>, <b>RelativeTolerance</b> and <b>Subintervals</b> (row vector of the mesh points, from <b>lower</b> to <b>upper</b>, including the waypoints). <b>F(F.Subintervals)</b> returns the partial sums of the integral.

Specify discontinuities of the integrand as <b>Waypoints</b>. Do not use waypoints to specify singularities at the integration limits. For faster but less accurate evaluations, sample <b>F</b> and build a <b>griddedInterpolant</b>.

## 💡 Examples

Integral of 1 + cos(x)^2 with a variable upper limit.

```matlab
f = @(x) 1 + cos(x).^2;
F = integralInterpolant(f, 0, 5)
xq = linspace(1, 3, 5);
Fq = F(xq)
```

Improper integral.

```matlab
f = @(x) x.^5 .* exp(-x) .* sin(x);
F = integralInterpolant(f, 0, Inf, 'RelativeTolerance', 1e-8, 'AbsoluteTolerance', 1e-13);
Fq = F([0 Inf])
```

Partial sums of an array-valued integrand.

```matlab
k = 1:5;
f = @(x) sin(k * x);
F = integralInterpolant(f, 0, 1, 'ArrayValued', true);
partialSums = F(F.Subintervals(end-5:end))
```

Conversion to a gridded interpolant.

```matlab
f = @(x) x.^x;
F = integralInterpolant(f, 1, 2);
x = linspace(1, 2, 11);
G = griddedInterpolant(x, F(x), 'cubic');
Fq = F(1.88)
Gq = G(1.88)
```

## 🔗 See also

[integral](../special_functions/integral.md), [cumtrapz](../linear_algebra/cumtrapz.md), [griddedInterpolant](../special_functions/griddedInterpolant.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
