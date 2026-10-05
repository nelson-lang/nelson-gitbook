# unidlike

Oppose de la log-vraisemblance uniforme discrete

## 📝 Syntaxe

- nlogL = unidlike(n, x)
- [nlogL, avar] = unidlike(n, x)

## 📥 Argument d'entrée

- n - scalaire entier strictement positif : valeur maximale.
- x - tableau reel non vide d'entiers finis strictement positifs : donnees echantillon.

## 📤 Argument de sortie

- nlogL - scalaire : oppose de la log-vraisemblance.
- avar - scalaire : estimation de variance asymptotique.

## 📄 Description


<b>unidlike</b> retourne l'oppose de la log-vraisemblance pour des donnees de loi uniforme discrete.

## 💡 Exemple



```matlab
x = [1 2 4 5 5];
[nlogL, avar] = unidlike(5, x);
```


## 🔗 Voir aussi

[unidfit](../../statistics/2_probability_distributions/unidfit.md), [unidpdf](../../statistics/2_probability_distributions/unidpdf.md), [unidcdf](../../statistics/2_probability_distributions/unidcdf.md), [unidrnd](../../statistics/2_probability_distributions/unidrnd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
