# tiedrank

Rangs avec moyenne pour les ex aequo.

## 📝 Syntaxe

- R = tiedrank(X)
- [R, tieadj] = tiedrank(X)
- [R, tieadj] = tiedrank(X, kendall)
- [R, tieadj] = tiedrank(X, kendall, bidirectional)

## 📄 Description


<b>tiedrank</b> calcule les rangs selon la premiere dimension et attribue le rang moyen aux valeurs ex aequo. Les valeurs <b>NaN</b> sont ignorees et gardent un rang <b>NaN</b>. 

Lorsque <b>kendall</b> est vrai, <b>tieadj</b> contient les trois termes d'ajustement des ex aequo pour la correlation de rang de Kendall. Lorsque <b>bidirectional</b> est vrai, les rangs sont attribues depuis les deux extremites des donnees triees.

## 💡 Exemple



```matlab
X = [-2 1 3 1 4];
[R, tieadj] = tiedrank(X)
```


## 🔗 Voir aussi

[ranksum](../../statistics/3_hypothesis_tests/ranksum.md), [signrank](../../statistics/3_hypothesis_tests/signrank.md), [friedman](../../statistics/3_hypothesis_tests/friedman.md), [kruskalwallis](../../statistics/3_hypothesis_tests/kruskalwallis.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
