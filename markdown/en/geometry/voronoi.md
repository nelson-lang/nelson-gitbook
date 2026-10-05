# voronoi

Voronoi diagram of planar points

## 📝 Syntax

- [vx, vy] = voronoi(P)
- [vx, vy] = voronoi(x, y)
- [vx, vy] = voronoi(x, y, T)
- h = voronoi(...)
- voronoi(P)

## 📄 Description


<b>voronoi</b> computes Voronoi line segments for planar points. 

When called without output, it plots the diagram.

## 💡 Example

Plot a Voronoi diagram.

```matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
voronoi(P)
```


## 🔗 See also

[voronoin](../geometry/voronoin.md), [delaunay](../geometry/delaunay.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
