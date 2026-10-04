# convhull

Convex hull of 2-D or 3-D points

## 📝 Syntax

- K = convhull(P)
- K = convhull(x, y)
- K = convhull(x, y, z)
- K = convhull(..., 'Simplify', tf)
- [K, A] = convhull(x, y)
- convhull(P)

## 📄 Description

<b>convhull</b> computes the convex hull of planar or spatial points.

When called without output for planar points, it plots the hull.

## 💡 Example

Compute and plot a planar convex hull.

```matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
[K, A] = convhull(P);
convhull(P)
```

## 🔗 See also

[convhulln](../geometry/convhulln.md), [boundary](../geometry/boundary.md).

## 🕔 History

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
