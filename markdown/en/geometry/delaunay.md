# delaunay

Delaunay triangulation of 2-D or 3-D points

## 📝 Syntax

- T = delaunay(P)
- T = delaunay(x, y)
- T = delaunay(x, y, z)

## 📄 Description


<b>delaunay</b> computes a Delaunay triangulation from coordinate vectors or a point matrix.

## 💡 Example

Plot Delaunay triangles of random planar points.

```matlab
rng default;
x = rand([20, 1]);
y = rand([20, 1]);
DT = delaunay(x, y);
triplot(DT, x, y)
```


## 🔗 See also

[delaunayn](../geometry/delaunayn.md), [delaunayTriangulation](../geometry/delaunayTriangulation.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
