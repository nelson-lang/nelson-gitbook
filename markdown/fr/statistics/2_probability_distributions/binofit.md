# binofit

Estimation de probabilite binomiale

## 📝 Syntaxe

- pHat = binofit(x, n)
- [pHat, pCI] = binofit(x, n, alpha)

## 📥 Argument d'entrée

- x - tableau reel non vide d'entiers finis positifs ou nuls : succes observes.
- n - tableau ou scalaire reel non vide d'entiers finis positifs ou nuls : nombres d'essais. Chaque valeur doit etre superieure ou egale a la valeur correspondante dans x.
- alpha - scalaire dans l'intervalle [0, 1] : niveau de signification. La valeur par defaut est 0.05.

## 📤 Argument de sortie

- pHat - tableau : probabilites binomiales estimees.
- pCI - tableau : intervalles de confiance des estimations. La premiere colonne contient les bornes inferieures et la seconde les bornes superieures.

## 📄 Description


<b>binofit</b> estime les probabilites binomiales a partir des succes observes et des nombres d'essais.

## 💡 Exemple



```matlab
x = [0 2 5 8 10];
n = 10;
[pHat, pCI] = binofit(x, n);
```


## 🔗 Voir aussi

[binolike](../../statistics/2_probability_distributions/binolike.md), [binopdf](../../statistics/2_probability_distributions/binopdf.md), [binocdf](../../statistics/2_probability_distributions/binocdf.md), [binornd](../../statistics/2_probability_distributions/binornd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
