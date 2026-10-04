# delaunay

Triangulation de Delaunay de points 2-D ou 3-D

## 📝 Syntaxe

- T = delaunay(P)
- T = delaunay(x, y)
- T = delaunay(x, y, z)

## 📄 Description

<b>delaunay</b> calcule une triangulation de Delaunay a partir de vecteurs de coordonnees ou d'une matrice de points.

## 💡 Exemple

Tracer les triangles de Delaunay de points plans aleatoires.

```matlab
rng default;
x = rand([20, 1]);
y = rand([20, 1]);
DT = delaunay(x, y);
triplot(DT, x, y)
```

## 🔗 Voir aussi

[delaunayn](../geometry/delaunayn.md), [delaunayTriangulation](../geometry/delaunayTriangulation.md).

## 🕔 Historique

| Version | 📄 Description    |
| ------- | ----------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
