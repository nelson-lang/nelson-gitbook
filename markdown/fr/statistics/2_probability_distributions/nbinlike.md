# nbinlike

Oppose de la log-vraisemblance binomiale negative

## 📝 Syntaxe

- nlogL = nbinlike(params, x)
- [nlogL, avar] = nbinlike(params, x, censoring, freq)

## 📥 Argument d'entrée

- params - vecteur a deux elements contenant r et p.
- x - tableau reel non vide d'entiers finis positifs ou nuls : echecs observes.
- censoring - tableau contenant les valeurs 0 ou 1. La valeur par defaut est un tableau de zeros.
- freq - tableau fini positif ou nul de frequences d'observation. La valeur par defaut est un tableau de uns.

## 📤 Argument de sortie

- nlogL - scalaire : oppose de la log-vraisemblance.
- avar - matrice : estimation de covariance asymptotique.

## 📄 Description


<b>nbinlike</b> retourne l'oppose de la log-vraisemblance pour des donnees de loi binomiale negative et l'estimation de covariance asymptotique.

## 💡 Exemple



```matlab
x = [0 1 2 4 6 9 12 15];
[nlogL, avar] = nbinlike([4 0.45], x);
```


## 🔗 Voir aussi

[nbinfit](../../statistics/2_probability_distributions/nbinfit.md), [nbinpdf](../../statistics/2_probability_distributions/nbinpdf.md), [nbincdf](../../statistics/2_probability_distributions/nbincdf.md), [nbinrnd](../../statistics/2_probability_distributions/nbinrnd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
