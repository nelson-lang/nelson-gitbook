# voronoin

Voronoi diagram in N dimensions

## 📝 Syntax

- [V, C] = voronoin(P)
- [V, C] = voronoin(P, options)

## 📄 Description


<b>voronoin</b> computes Voronoi vertices and cells for the input points. 

<b>V</b> contains vertices and <b>C</b> is a cell array of one-based vertex indices.

## 💡 Example

Voronoi vertices and cells of planar points.

```matlab
P = [0 0; 1 0; 1 1; 0 1];
[V, C] = voronoin(P)
```


## 🔗 See also

[voronoi](../geometry/voronoi.md), [delaunayn](../geometry/delaunayn.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
