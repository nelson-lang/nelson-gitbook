# delaunayTriangulation

Delaunay triangulation object

## 📝 Syntax

- DT = delaunayTriangulation()
- DT = delaunayTriangulation(P)
- DT = delaunayTriangulation(P, C)
- DT = delaunayTriangulation(x, y)
- DT = delaunayTriangulation(x, y, C)
- DT = delaunayTriangulation(x, y, z)
- K = convexHull(DT)
- [V, C] = voronoiDiagram(DT)

## 📄 Description


<b>delaunayTriangulation</b> builds a triangulation object from points and provides related geometry queries.

## 💡 Example

Plot a triangulation and the triangle incenters.

```matlab
rng default;
P = rand([30 2]);
DT = delaunayTriangulation(P)
IC = incenter(DT);
triplot(DT)
hold on
plot(IC(:, 1), IC(:, 2), '*r')
```


## 🔗 See also

[triangulation](../geometry/triangulation.md), [delaunay](../geometry/delaunay.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
