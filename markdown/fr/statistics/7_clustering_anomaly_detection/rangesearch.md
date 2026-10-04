# rangesearch

Trouver tous les voisins dans une distance donnee.

## 📝 Syntaxe

- idx = rangesearch(X, Y, r)
- idx = rangesearch(X, Y, r, Name, Value)
- [idx, D] = rangesearch(...)

## 📄 Description

<b>rangesearch</b> trouve toutes les lignes de <b>X</b> dont la distance a chaque ligne de requete de <b>Y</b> n'est pas superieure a <b>r</b>.

La recherche est exhaustive et native. Les sorties sont des tableaux de cellules colonnes. Les options prises en charge incluent Distance, NSMethod, SortIndices, P, Scale, Cov, BucketSize et CacheSize.

## 💡 Exemple

```matlab
X = [0 0; 1 0; 0 2; 4 4];
Y = [0 1; 3 4];
[idx, D] = rangesearch(X, Y, 1.1)
```

## 🔗 Voir aussi

[knnsearch](../../statistics/knnsearch.md), [pdist](../../statistics/pdist.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
