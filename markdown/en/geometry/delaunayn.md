# delaunayn

Delaunay triangulation in N dimensions

## 📝 Syntax

- T = delaunayn(P)
- T = delaunayn(P, options)

## 📄 Description

<b>delaunayn</b> computes a Delaunay triangulation for the points in <b>P</b>.

Rows of <b>T</b> contain one-based indices into <b>P</b>.

## 💡 Example

Delaunay triangulation of planar points.

```matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
T = delaunayn(P)
```

## 🔗 See also

[delaunay](../geometry/delaunay.md), [triangulation](../geometry/triangulation.md).

## 🕔 History

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
