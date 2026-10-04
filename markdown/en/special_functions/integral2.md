# integral2

Numerically evaluate double integral

## 📝 Syntax

- q = integral2(fun, xmin, xmax, ymin, ymax)
- q = integral2(fun, xmin, xmax, ymin, ymax, name, value)

## 📥 Input argument

- fun - Integrand: function handle of two variables.
- xmin, xmax - Limits of integration in x: real or infinite scalars.
- ymin, ymax - Limits of integration in y: real scalars or function handles of x.
- name, value - One or more name/value pairs: 'RelativeTolerance', 'AbsoluteTolerance', 'Vectorized', 'Waypoints'.

## 📤 Output argument

- q - Value of the double integral.

## 📄 Description

<b>q = integral2(fun, xmin, xmax, ymin, ymax)</b> numerically integrates the function <b>fun(x, y)</b> over the region <b>xmin <= x <= xmax</b> and <b>ymin(x) <= y <= ymax(x)</b>.

The y limits <b>ymin</b> and <b>ymax</b> may be scalars, or function handles of <b>x</b> to describe a non-rectangular region.

The integration is performed with nested adaptive Gauss-Kronrod quadrature. The name/value pairs <b>RelativeTolerance</b> (default <b>1e-6</b>) and <b>AbsoluteTolerance</b> (default <b>1e-10</b>) control the accuracy; the former names <b>RelTol</b> and <b>AbsTol</b> are still accepted.

By default (<b>Vectorized</b> set to <b>true</b>) <b>fun</b> must accept arrays and operate element-wise. Set <b>Vectorized</b> to <b>false</b> when <b>fun</b> accepts only scalar arguments: it is then evaluated point by point, which is slower.

<b>Waypoints</b> specifies points of interest of the integration region, such as local extrema or discontinuities, that the integrator uses in its initial mesh: a two-column array <b>[x y]</b> of points, or a cell array <b>{x y}</b> of grid vectors. The x interval is split at the x values of the waypoints, and each y interval at their y values. Waypoints must be real and finite. Do not use waypoints to specify singularities; split the region instead.

## 💡 Examples

```matlab
q = integral2(@(x, y) x .* y, 0, 1, 0, 1)
```

```matlab
q = integral2(@(x, y) x .* y, 0, 1, 0, @(x) x)
```

Integrand written for scalar inputs

```matlab
fun = @(x, y) log(x^2 + y^2);
q = integral2(fun, 0, 2, 0, 2, 'Vectorized', false)
```

Waypoints on the kinks of the integrand (exact value 0.29 \* 0.26)

```matlab
fun = @(x, y) abs(x - 0.3) .* abs(y - 0.6);
q = integral2(fun, 0, 1, 0, 1, 'Waypoints', [0.3, 0.6])
```

## 🔗 See also

[integral](../special_functions/integral.md).

## 🕔 History

| Version | 📄 Description                                                                                  |
| ------- | ----------------------------------------------------------------------------------------------- |
| 2.0.0   | initial version                                                                                 |
| 2.0.0   | 'Vectorized' option added: integrate functions written for scalar inputs.                       |
| 2.0.0   | 'AbsoluteTolerance' and 'RelativeTolerance' names added ('AbsTol' and 'RelTol' still accepted). |
| 2.0.0   | 'Waypoints' option added: points of interest in the integration region.                         |

<!--
## 👤 Author

Allan CORNET
-->
