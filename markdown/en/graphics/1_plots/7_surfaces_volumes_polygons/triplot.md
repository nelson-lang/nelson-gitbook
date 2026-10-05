# triplot

2-D triangular plot

## 📝 Syntax

- triplot(T, x, y)
- triplot(T, x, y, LineSpec)
- triplot(TO)
- triplot(..., Name, Value)
- h = triplot(...)

## 📄 Description


<b>triplot</b> plots a 2-D triangular mesh from a connectivity matrix or a triangulation object.

## 💡 Example

Plot a triangulation and its triangle incenters.

```matlab
rng default;
P = rand([30 2]);
DT = delaunayTriangulation(P);
IC = incenter(DT);
triplot(DT)
hold on
plot(IC(:, 1), IC(:, 2), '*r')
```
<img src="triplot_1.svg" align="middle"/>


## 🔗 See also

[delaunayTriangulation](../../../geometry/delaunayTriangulation.md), [triangulation](../../../geometry/triangulation.md), [delaunay](../../../geometry/delaunay.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
