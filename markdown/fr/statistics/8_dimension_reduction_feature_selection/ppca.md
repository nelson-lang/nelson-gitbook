# ppca

Analyse en composantes principales probabiliste.

## 📝 Syntaxe

- [coeff, score, pcvar] = ppca(Y, K)
- [coeff, score, pcvar, mu, v, S] = ppca(Y, K, Name, Value)

## 📄 Description


<b>ppca</b> calcule un modele probabiliste de composantes principales pour une matrice reelle. Les valeurs manquantes codees par NaN sont estimees iterativement. 

Les options nom-valeur supportees sont W0, v0 et Options. La structure Options peut etre creee avec statset et supporte Display, MaxIter, TolFun et TolX. 

La structure S contient les champs W, Xexp, Recon, v, NumIter, RMSResid et nloglk.

## 💡 Exemple



```matlab
Y = [1 2 3; 2 NaN 5; 4 5 8; 5 7 NaN; 7 8 13];
[coeff, score, pcvar, mu, v, S] = ppca(Y, 2)
```


## 🔗 Voir aussi

[pca](../../statistics/8_dimension_reduction_feature_selection/pca.md), [pcacov](../../statistics/8_dimension_reduction_feature_selection/pcacov.md), [statset](../../statistics/9_design_of_experiments/statset.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
