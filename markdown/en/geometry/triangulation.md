# triangulation

Triangulation object

## 📝 Syntax

- TR = triangulation(T, P)
- TR = triangulation(T, x, y)
- TR = triangulation(T, x, y, z)
- E = edges(TR)
- [idx, bary] = pointLocation(TR, Q)

## 📄 Description


<b>triangulation</b> stores points and a connectivity list and provides topology queries.

## 💡 Example

Create a triangulation and locate a point.

```matlab
P = [0 0; 1 0; 1 1; 0 1];
T = delaunayn(P);
TR = triangulation(T, P);
[idx, bary] = pointLocation(TR, [0.25 0.25])
```


## 🔗 See also

[delaunayTriangulation](../geometry/delaunayTriangulation.md), [delaunayn](../geometry/delaunayn.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
