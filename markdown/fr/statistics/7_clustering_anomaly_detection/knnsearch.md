# knnsearch

Trouver les k plus proches voisins.

## 📝 Syntaxe

- idx = knnsearch(X, Y)
- idx = knnsearch(X, Y, Name, Value)
- [idx, D] = knnsearch(...)

## 📄 Description

<b>knnsearch</b> trouve les lignes de <b>X</b> les plus proches de chaque ligne de requete de <b>Y</b> avec une recherche exhaustive native.

Les options prises en charge incluent K, Distance, IncludeTies, NSMethod, SortIndices, P, Scale, Cov, BucketSize et CacheSize. Quand IncludeTies vaut true, les sorties sont des tableaux de cellules.

## 💡 Exemple

```matlab
X = [0 0; 1 0; 0 2; 4 4];
Y = [0 1; 3 4];
[idx, D] = knnsearch(X, Y, 'K', 2)
```

## 🔗 Voir aussi

[pdist](../../statistics/pdist.md), [pdist2](../../statistics/pdist2.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
