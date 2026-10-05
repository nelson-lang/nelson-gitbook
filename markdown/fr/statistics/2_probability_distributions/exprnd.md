# exprnd

Nombres aleatoires exponentiels

## 📝 Syntaxe

- r = exprnd(mu)
- r = exprnd(mu, sz)
- r = exprnd(mu, sz1, ..., szN)

## 📥 Argument d'entrée

- mu - scalaire positif ou tableau : moyenne.
- sz - scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description


<b>exprnd</b> genere des valeurs aleatoires de loi exponentielle.

## 💡 Exemple



```matlab
rng(0);
r = exprnd(2, 2, 3);
```


## 🔗 Voir aussi

[exppdf](../../statistics/2_probability_distributions/exppdf.md), [expcdf](../../statistics/2_probability_distributions/expcdf.md), [expinv](../../statistics/2_probability_distributions/expinv.md), [expstat](../../statistics/2_probability_distributions/expstat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
