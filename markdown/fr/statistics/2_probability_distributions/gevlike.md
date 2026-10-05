# gevlike

Oppose de la log-vraisemblance de la loi extreme generalisee

## 📝 Syntaxe

- nlogL = gevlike(params, x)
- [nlogL, avar] = gevlike(params, x, censoring, freq)

## 📥 Argument d'entrée

- params - vecteur a trois elements : parametres de forme, d'echelle et de position.
- x - tableau reel fini non vide : donnees d'echantillon.
- censoring - tableau contenant des valeurs 0 ou 1 : indicateurs de censure a droite.
- freq - tableau de valeurs finies non negatives : frequences d'observation.

## 📤 Argument de sortie

- nlogL - scalaire : oppose de la log-vraisemblance.
- avar - tableau 3-par-3 : matrice de covariance approchee.

## 📄 Description


<b>gevlike</b> evalue l'oppose de la log-vraisemblance de la loi extreme generalisee.

## 💡 Exemple



```matlab
x = [-1.2 -0.4 0.1 0.8 1.5 2.8 4.0];
phat = gevfit(x);
nlogL = gevlike(phat, x);
```


## 🔗 Voir aussi

[gevfit](../../statistics/2_probability_distributions/gevfit.md), [gevpdf](../../statistics/2_probability_distributions/gevpdf.md), [gevcdf](../../statistics/2_probability_distributions/gevcdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
