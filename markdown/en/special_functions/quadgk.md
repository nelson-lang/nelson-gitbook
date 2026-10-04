# quadgk

Numerically evaluate an integral with Gauss-Kronrod quadrature.

## 📝 Syntax

- q = quadgk(fun, a, b)
- [q, errbnd] = quadgk(fun, a, b)
- [...] = quadgk(fun, a, b, name, value)

## 📥 Input argument

- fun - Integrand: function handle.
- a, b - Integration limits. Finite complex limits are supported through straight-line contour segments.
- name, value - Options: 'RelTol', 'AbsTol', 'Waypoints', and 'MaxIntervalCount'.

## 📤 Output argument

- q - Computed integral.
- errbnd - Approximate absolute error bound.

## 📄 Description

<b>quadgk</b> integrates a vectorized scalar integrand using adaptive Gauss-Kronrod quadrature.

<b>Waypoints</b> split the integral into subintervals. Complex waypoints define a piecewise straight contour.

## 💡 Examples

```matlab
[q, errbnd] = quadgk(@(x) exp(-x.^2), 0, Inf)
```

```matlab
q = quadgk(@(z) 1 ./ (2 .* z - 1), 1, 1, 'Waypoints', [1 + 1i, 0 + 1i, 0 - 1i, 1 - 1i])
```

## 🔗 See also

[integral](../special_functions/integral.md), [integral2](../special_functions/integral2.md), [integral3](../special_functions/integral3.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
