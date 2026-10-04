# mdscale

Positionnement multidimensionnel non classique.

## 📝 Syntaxe

- Y = mdscale(D, p)
- Y = mdscale(D, p, Name, Value)
- [Y, stress] = mdscale(...)
- [Y, stress, disparities] = mdscale(...)

## 📄 Description

<b>mdscale</b> calcule une configuration de positionnement multidimensionnel a partir d'une matrice de dissimilarites ou d'un vecteur de distances.

Les options nom-valeur incluent Criterion, Weights, Start, Replicates et Options. Les criteres supportes sont stress, sstress, metricstress, metricsstress, sammon et strain.

Les dissimilarites NaN sont traitees comme des valeurs manquantes. La structure Options peut etre creee avec statset et supporte Display, MaxIter, TolFun et TolX.

## 💡 Exemple

```matlab
X = [0 0; 1 0; 0 2; 2 2];
D = pdist(X);
[Y, stress, disparities] = mdscale(D, 2)
```

## 🔗 Voir aussi

[cmdscale](../../statistics/cmdscale.md), [pdist](../../statistics/pdist.md), [squareform](../../statistics/squareform.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
