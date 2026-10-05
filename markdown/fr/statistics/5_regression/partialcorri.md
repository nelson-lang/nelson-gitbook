# partialcorri

Coefficients de correlation partielle ajustes sur des variables internes.

## 📝 Syntaxe

- rho = partialcorri(Y, X)
- rho = partialcorri(Y, X, Z)
- [rho, pval] = partialcorri(...)
- [rho, pval] = partialcorri(..., Name, Value)

## 📄 Description


<b>partialcorri</b> calcule les correlations partielles entre chaque colonne de <b>Y</b> et chaque colonne de <b>X</b>, en ajustant sur les autres colonnes de <b>X</b>. 

Quand <b>Z</b> est fourni, <b>X</b> et <b>Y</b> sont aussi controles par <b>Z</b>. Les options prises en charge sont <b>Type</b>, <b>Rows</b> et <b>Tail</b>.

## 💡 Exemple



```matlab
X = randn(20, 3);
Y = randn(20, 2);
rho = partialcorri(Y, X)
```


## 🔗 Voir aussi

[partialcorr](../../statistics/5_regression/partialcorr.md), [corr](../../statistics/1_descriptive_statistics_visualization/corr.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
