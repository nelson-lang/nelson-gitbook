# integral3

Numerically evaluate a triple integral.

## 📝 Syntax

- q = integral3(fun, xmin, xmax, ymin, ymax, zmin, zmax)
- q = integral3(fun, xmin, xmax, ymin, ymax, zmin, zmax, name, value)

## 📥 Input argument

- fun - Integrand: function handle of x, y, and z.
- xmin, xmax - Limits of integration in x.
- ymin, ymax - Limits in y: scalars or function handles of x.
- zmin, zmax - Limits in z: scalars or function handles of x and y.
- name, value - Options: 'RelativeTolerance' (default 1e-6), 'AbsoluteTolerance' (default 1e-10), 'Method', 'Vectorized', and 'Waypoints'. The former names 'RelTol' and 'AbsTol' are still accepted.

## 📤 Output argument

- q - Computed triple integral.

## 📄 Description


<b>integral3</b> evaluates a triple integral over a rectangular or function-bounded region. 

Finite vectorized calls use a tiled Gauss-Kronrod rule. Infinite limits and <b>Method</b> set to <b>'iterated'</b> use nested adaptive quadrature. 

<b>Waypoints</b> specifies points of interest of the integration region, such as local extrema or discontinuities, that the integrator uses in its initial mesh: a three-column array <b>[x y z]</b> of points, or a cell array <b>{x y z}</b> of grid vectors. The x, y and z intervals are split at the corresponding coordinates of the waypoints. Waypoints must be real and finite. Do not use waypoints to specify singularities; split the region instead.

## 💡 Examples



```matlab
q = integral3(@(x, y, z) y .* sin(x) + z .* cos(x), 0, pi, 0, 1, -1, 1)
```
Waypoints on the kinks of the integrand (exact value 0.29 * 0.26 * 0.34)

```matlab
fun = @(x, y, z) abs(x - 0.3) .* abs(y - 0.6) .* abs(z - 0.2);
q = integral3(fun, 0, 1, 0, 1, 0, 1, 'Waypoints', [0.3, 0.6, 0.2])
```


## 🔗 See also

[integral](../special_functions/integral.md), [integral2](../special_functions/integral2.md), [quadgk](../special_functions/quadgk.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |
| 2.0.0   | 'AbsoluteTolerance' and 'RelativeTolerance' names added ('AbsTol' and 'RelTol' still accepted). |
| 2.0.0   | 'Waypoints' option added: points of interest in the integration region. |

<!--
## 👤 Author

Allan CORNET
-->
