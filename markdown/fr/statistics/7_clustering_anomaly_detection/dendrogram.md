# dendrogram

Trace d'un dendrogramme pour un arbre de classification hierarchique.

## 📝 Syntaxe

- dendrogram(Z)
- dendrogram(Z, P)
- dendrogram(ax, ...)
- H = dendrogram(...)
- [H, T, outperm] = dendrogram(...)

## 📄 Description

<b>dendrogram</b> trace un arbre de classification hierarchique binaire retourne par <b>linkage</b>.

La fonction prend en charge les options nom-valeur Reorder, CheckCrossing, ClusterIndices, ColorThreshold, ShowCut, ShowMarkers, Orientation, Labels et Parent.

## 💡 Exemple

```matlab
X = [0 0; 1 0; 0 2; 4 4];
Z = linkage(X);
dendrogram(Z, 0)
```

## 🔗 Voir aussi

[linkage](../../statistics/linkage.md), [cluster](../../statistics/cluster.md), [pdist](../../statistics/pdist.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
