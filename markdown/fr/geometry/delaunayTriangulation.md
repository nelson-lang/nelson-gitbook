# delaunayTriangulation

Objet de triangulation de Delaunay

## 📝 Syntaxe

- DT = delaunayTriangulation()
- DT = delaunayTriangulation(P)
- DT = delaunayTriangulation(P, C)
- DT = delaunayTriangulation(x, y)
- DT = delaunayTriangulation(x, y, C)
- DT = delaunayTriangulation(x, y, z)
- K = convexHull(DT)
- [V, C] = voronoiDiagram(DT)

## 📄 Description


<b>delaunayTriangulation</b> construit un objet de triangulation depuis des points et fournit des requetes geometriques associees.

## 💡 Exemple

Tracer une triangulation et les centres inscrits des triangles.

```matlab
rng default;
P = rand([30 2]);
DT = delaunayTriangulation(P)
IC = incenter(DT);
triplot(DT)
hold on
plot(IC(:, 1), IC(:, 2), '*r')
```


## 🔗 Voir aussi

[triangulation](../geometry/triangulation.md), [delaunay](../geometry/delaunay.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
