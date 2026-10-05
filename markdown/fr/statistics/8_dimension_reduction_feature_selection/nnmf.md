# nnmf

Factorisation de matrice non negative.

## 📝 Syntaxe

- [W, H] = nnmf(A, k)
- [W, H] = nnmf(A, k, Name, Value)
- [W, H, D] = nnmf(...)

## 📄 Description


<b>nnmf</b> factorise la matrice non negative A en deux facteurs non negatifs W et H afin que W\*H approxime A. 

Les options nom-valeur supportees sont Algorithm, W0, H0, Options et Replicates. Algorithm peut etre als ou mult. La structure Options peut etre creee avec statset et supporte Display, MaxIter, TolFun et TolX. 

Les lignes de H sont normalisees a une longueur unitaire et les colonnes de W sont ordonnees par longueur decroissante. D est le residu quadratique moyen.

## 💡 Exemple



```matlab
A = rand(20, 10);
[W, H, D] = nnmf(A, 3)
```


## 🔗 Voir aussi

[pca](../../statistics/8_dimension_reduction_feature_selection/pca.md), [statset](../../statistics/9_design_of_experiments/statset.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
