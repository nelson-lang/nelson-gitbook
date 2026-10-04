# triangulation

Objet de triangulation

## 📝 Syntaxe

- TR = triangulation(T, P)
- TR = triangulation(T, x, y)
- TR = triangulation(T, x, y, z)
- E = edges(TR)
- [idx, bary] = pointLocation(TR, Q)

## 📄 Description

<b>triangulation</b> stocke des points et une liste de connectivite et fournit des requetes topologiques.

## 💡 Exemple

Creer une triangulation et localiser un point.

```matlab
P = [0 0; 1 0; 1 1; 0 1];
T = delaunayn(P);
TR = triangulation(T, P);
[idx, bary] = pointLocation(TR, [0.25 0.25])
```

## 🔗 Voir aussi

[delaunayTriangulation](../geometry/delaunayTriangulation.md), [delaunayn](../geometry/delaunayn.md).

## 🕔 Historique

| Version | 📄 Description    |
| ------- | ----------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
