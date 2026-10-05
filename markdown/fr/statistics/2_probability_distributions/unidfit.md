# unidfit

Estimation du maximum uniforme discret

## 📝 Syntaxe

- nHat = unidfit(x)
- [nHat, nCI] = unidfit(x, alpha)

## 📥 Argument d'entrée

- x - vecteur ou matrice reel non vide d'entiers finis strictement positifs : donnees echantillon.
- alpha - scalaire dans l'intervalle [0, 1] : niveau de signification. La valeur par defaut est 0.05.

## 📤 Argument de sortie

- nHat - tableau : estimations de la valeur entiere maximale.
- nCI - tableau : intervalles de confiance des estimations.

## 📄 Description


<b>unidfit</b> estime la valeur maximale d'une loi uniforme discrete sur les entiers de 1 a n.

## 💡 Exemple



```matlab
x = [1 2 4 5 5];
[nHat, nCI] = unidfit(x);
```


## 🔗 Voir aussi

[unidlike](../../statistics/2_probability_distributions/unidlike.md), [unidpdf](../../statistics/2_probability_distributions/unidpdf.md), [unidcdf](../../statistics/2_probability_distributions/unidcdf.md), [unidrnd](../../statistics/2_probability_distributions/unidrnd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
