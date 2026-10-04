# voronoi

Diagramme de Voronoi de points plans

## 📝 Syntaxe

- [vx, vy] = voronoi(P)
- [vx, vy] = voronoi(x, y)
- [vx, vy] = voronoi(x, y, T)
- h = voronoi(...)
- voronoi(P)

## 📄 Description

<b>voronoi</b> calcule les segments du diagramme de Voronoi pour des points plans.

Sans sortie, la fonction trace le diagramme.

## 💡 Exemple

Tracer un diagramme de Voronoi.

```matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
voronoi(P)
```

## 🔗 Voir aussi

[voronoin](../geometry/voronoin.md), [delaunay](../geometry/delaunay.md).

## 🕔 Historique

| Version | 📄 Description    |
| ------- | ----------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
