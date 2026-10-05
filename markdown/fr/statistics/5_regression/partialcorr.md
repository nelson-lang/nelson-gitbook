# partialcorr

Coefficients de correlation partielle lineaire ou de rang.

## 📝 Syntaxe

- rho = partialcorr(X)
- rho = partialcorr(X, Z)
- rho = partialcorr(X, Y, Z)
- [rho, pval] = partialcorr(...)
- [rho, pval] = partialcorr(..., Name, Value)

## 📄 Description


<b>partialcorr</b> calcule des correlations partielles entre colonnes en controlant d'autres variables. 

Les options prises en charge sont <b>Type</b> avec <b>pearson</b> ou <b>spearman</b>, <b>Rows</b> avec <b>all</b>, <b>complete</b> ou <b>pairwise</b>, et <b>Tail</b> avec <b>both</b>, <b>right</b> ou <b>left</b>.

## 💡 Exemple



```matlab
X = [1 2 3; 2 4 1; 3 5 2; 4 8 4; 5 10 5];
Z = [1 0; 1 1; 2 1; 2 0; 3 1];
rho = partialcorr(X, Z)
```


## 🔗 Voir aussi

[corr](../../statistics/1_descriptive_statistics_visualization/corr.md), [corrcoef](../../statistics/1_descriptive_statistics_visualization/corrcoef.md), [tiedrank](../../statistics/1_descriptive_statistics_visualization/tiedrank.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
