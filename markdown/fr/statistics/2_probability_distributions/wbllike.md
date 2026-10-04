# wbllike

Oppose de la log-vraisemblance de la loi Weibull

## 📝 Syntaxe

- nlogL = wbllike(params, x)
- [nlogL, avar] = wbllike(params, x, censoring, freq)

## 📥 Argument d'entrée

- params - vecteur a deux elements : parametres d'echelle et de forme.
- x - tableau reel positif fini non vide : donnees d'echantillon.
- censoring - tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
- freq - tableau de valeurs finies non negatives : frequences d'observation.

## 📤 Argument de sortie

- nlogL - scalaire : oppose de la log-vraisemblance.
- avar - tableau 2-par-2 : matrice de covariance approchee.

## 📄 Description

<b>wbllike</b> evalue l'oppose de la log-vraisemblance de la loi Weibull.

## 💡 Exemple

```matlab
x = [0.5 1 2 3 5 8];
phat = wblfit(x);
nlogL = wbllike(phat, x);
```

## 🔗 Voir aussi

[wblfit](../../statistics/wblfit.md), [wblpdf](../../statistics/wblpdf.md), [wblcdf](../../statistics/wblcdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
