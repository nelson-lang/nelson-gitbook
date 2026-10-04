# linkage

Arbre de classification hierarchique ascendante.

## 📝 Syntaxe

- Z = linkage(X)
- Z = linkage(X, method)
- Z = linkage(X, method, metric)
- Z = linkage(X, method, metric, distanceParameter)
- Z = linkage(D, method)

## 📄 Description

<b>linkage</b> construit un arbre de classification hierarchique a partir des lignes de <b>X</b> ou d'un vecteur de distances condense <b>D</b>.

Les methodes prises en charge sont single, complete, average, weighted, centroid, median et ward.

## 💡 Exemple

```matlab
X = [0 0; 1 0; 0 2; 4 4];
Z = linkage(X, 'average');
T = cluster(Z, 'MaxClust', 2)
```

## 🔗 Voir aussi

[cluster](../../statistics/cluster.md), [pdist](../../statistics/pdist.md), [squareform](../../statistics/squareform.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
