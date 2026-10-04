# scatteredInterpolant

Scattered data interpolant object

## 📝 Syntax

- F = scatteredInterpolant(P, V)
- F = scatteredInterpolant(x, y, V)
- F = scatteredInterpolant(x, y, z, V)
- F = scatteredInterpolant(P, V, method)
- F = scatteredInterpolant(P, V, method, extrapolationMethod)
- Vq = evaluate(F, Q)
- Vq = F(xq, yq)

## 📄 Description

<b>scatteredInterpolant</b> stores scattered sample points and values for repeated interpolation queries.

## 💡 Example

Evaluate an interpolant at a query point.

```matlab
P = [0 0; 1 0; 1 1; 0 1];
V = P(:, 1) + P(:, 2);
F = scatteredInterpolant(P, V);
Vq = evaluate(F, [0.25 0.25])
```

## 🔗 See also

[griddata](../geometry/griddata.md), [delaunayTriangulation](../geometry/delaunayTriangulation.md).

## 🕔 History

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
