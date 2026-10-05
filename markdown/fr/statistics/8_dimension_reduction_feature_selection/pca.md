# pca

Analyse en composantes principales de donnees brutes.

## 📝 Syntaxe

- coeff = pca(X)
- coeff = pca(X, Name, Value)
- [coeff, score, latent] = pca(...)
- [coeff, score, latent, tsquared, explained, mu] = pca(...)

## 📄 Description


<b>pca</b> calcule les coefficients des composantes principales pour une matrice numerique dont les lignes sont les observations et les colonnes les variables. 

Les arguments nom-valeur incluent Algorithm, Centered, Economy, NumComponents, Rows, Weights et VariableWeights. Le calcul principal utilise une decomposition native en valeurs singulieres ou en valeurs propres.

## 💡 Exemple



```matlab
X = [1 2; 3 4; 5 8; 7 11];
[coeff, score, latent] = pca(X)
```


## 🔗 Voir aussi

[svd](../../linear_algebra/3_eigen_singular_values/svd.md), [cov](../../statistics/1_descriptive_statistics_visualization/cov.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
