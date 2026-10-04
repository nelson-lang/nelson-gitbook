# corr

Correlation lineaire ou de rang.

## 📝 Syntaxe

- rho = corr(X)
- rho = corr(X, Y)
- [rho, pval] = corr(...)
- [rho, pval] = corr(..., Name, Value)

## 📄 Description

<b>corr</b> calcule les correlations entre paires de colonnes de <b>X</b>, ou entre les colonnes de <b>X</b> et <b>Y</b>.

Les options prises en charge sont <b>Type</b> avec <b>pearson</b>, <b>spearman</b> ou <b>kendall</b>; <b>Rows</b> avec <b>all</b>, <b>complete</b> ou <b>pairwise</b>; <b>Tail</b> avec <b>both</b>, <b>right</b> ou <b>left</b>; et <b>Weights</b> pour les poids d'observation.

## 💡 Exemple

```matlab
X = [1 2 3; 2 4 1; 3 NaN 2; 4 8 4; 5 10 5];
rho = corr(X, 'Rows', 'pairwise')
```

## 🔗 Voir aussi

[corrcoef](../../statistics/corrcoef.md), [cov](../../statistics/cov.md), [tiedrank](../../statistics/tiedrank.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
