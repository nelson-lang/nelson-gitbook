# integral

Numerically evaluate integral (adaptive quadrature)

## 📝 Syntax

- q = integral(fun, a, b)
- q = integral(fun, a, b, name, value)

## 📥 Input argument

- fun - Integrand: function handle.
- a - Lower limit of integration: real scalar (finite or infinite) or finite complex scalar.
- b - Upper limit of integration: real scalar (finite or infinite) or finite complex scalar.
- name, value - One or more name/value pairs: 'RelativeTolerance', 'AbsoluteTolerance', 'ArrayValued', 'Vectorized', 'Waypoints'.

## 📤 Output argument

- q - Value of the integral.

## 📄 Description

<b>q = integral(fun, a, b)</b> numerically integrates the function <b>fun</b> from <b>a</b> to <b>b</b> using global adaptive Gauss-Kronrod quadrature.

By default <b>fun</b> is assumed to be vectorized: it must accept a vector of abscissae and return a vector of the same size.

The limits <b>a</b> and <b>b</b> may be infinite (<b>-Inf</b> and/or <b>Inf</b>); a change of variable maps the interval to a finite one.

If <b>a</b>, <b>b</b> or a waypoint is complex, <b>integral</b> computes the path integral along the straight lines joining <b>a</b>, the waypoints in the given order, and <b>b</b>. Complex limits and waypoints must be finite.

The following name/value pairs are supported:

<b>RelativeTolerance</b> (or <b>RelTol</b>): relative error tolerance (default <b>1e-6</b>).

<b>AbsoluteTolerance</b> (or <b>AbsTol</b>): absolute error tolerance (default <b>1e-10</b>).

<b>integral</b> attempts to satisfy <b>abs(q - Q) <= max(AbsoluteTolerance, RelativeTolerance \* abs(q))</b> where <b>Q</b> is the exact value.

<b>ArrayValued</b>: when <b>true</b>, <b>fun</b> returns an array and is evaluated at a scalar abscissa (default <b>false</b>).

<b>Vectorized</b>: when <b>false</b>, <b>fun</b> is written for scalar inputs: it accepts a scalar <b>x</b> and returns a scalar, and <b>integral</b> evaluates it point by point (default <b>true</b>, faster). Ignored when <b>ArrayValued</b> is <b>true</b>.

<b>Waypoints</b>: vector of finite real or complex points used in the initial mesh. With real limits and real waypoints, the interval is split at the waypoints lying inside it (their order does not matter): use them to mark discontinuities or local extrema of the integrand. Do not use waypoints to specify singularities; split the interval instead. Complex waypoints define a piecewise linear contour.

## 💡 Examples

```matlab
q = integral(@(x) x.^2, 0, 1)
```

```matlab
q = integral(@(x) exp(-x.^2), 0, Inf)
```

```matlab
q = integral(@(x) [1; 1] .* x, 0, 1, 'ArrayValued', true)
```

Singularity at the lower limit: tighter tolerances

```matlab
format long
q1 = integral(@log, 0, 1)
q2 = integral(@log, 0, 1, 'AbsoluteTolerance', 1e-12, 'RelativeTolerance', 0)
format short
```

Integral of a function written for scalar inputs

```matlab
fun = @(x) 2*x - x^2;
q = integral(fun, 0, 1, 'Vectorized', false)
```

Complex contour integration using waypoints (closed path around the pole z = 1/2)

```matlab
fun = @(z) 1 ./ (2*z - 1);
q = integral(fun, 0, 0, 'Waypoints', [1+1i, 1-1i])
```

## 🔗 See also

[integral2](../special_functions/integral2.md), [integralInterpolant](../special_functions/integralInterpolant.md), [trapz](../linear_algebra/trapz.md).

## 🕔 History

| Version | 📄 Description                                                                                  |
| ------- | ----------------------------------------------------------------------------------------------- |
| 2.0.0   | initial version                                                                                 |
| 2.0.0   | 'Waypoints' option and complex limits (contour integration) added.                              |
| 2.0.0   | 'Vectorized' option added: integrate functions written for scalar inputs.                       |
| 2.0.0   | 'AbsoluteTolerance' and 'RelativeTolerance' names added ('AbsTol' and 'RelTol' still accepted). |

<!--
## 👤 Author

Allan CORNET
-->
