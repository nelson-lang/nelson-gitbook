# fitgmdist

Ajuster une distribution de melange gaussien.

## 📝 Syntaxe

- gm = fitgmdist(X, k)
- gm = fitgmdist(X, k, Name, Value)

## 📄 Description

<b>fitgmdist</b> ajuste un modele de melange gaussien a <b>k</b> composantes aux lignes de <b>X</b> avec l'algorithme esperance-maximisation.

Les arguments nom-valeur incluent Start, Replicates, RegularizationValue, CovarianceType, SharedCovariance, MaxIter, TolFun et Options.

## 💡 Exemple

Ajuster et classer un melange simple.

```matlab
X = [0; 1; 10; 11];
gm = fitgmdist(X, 2, 'Start', [1; 1; 2; 2]);
idx = cluster(gm, X)
```

## 🔗 Voir aussi

[gmdistribution](../../statistics/gmdistribution.md), [kmeans](../../statistics/kmeans.md), [clusterdata](../../statistics/clusterdata.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
