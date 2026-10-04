# gamlike

Log-vraisemblance negative gamma

## 📝 Syntaxe

- nlogL = gamlike(params, x)
- [nlogL, avar] = gamlike(params, x, censoring, freq)

## 📥 Argument d'entrée

- params - vecteur a deux elements : parametres de forme et d'echelle.
- x - tableau reel positif fini non vide : donnees d'echantillon.
- censoring - tableau contenant les valeurs 0 ou 1 : indicateurs de censure a droite.
- freq - tableau de valeurs finies non negatives : frequences des observations.

## 📤 Argument de sortie

- nlogL - scalaire : log-vraisemblance negative.
- avar - tableau 2 par 2 : matrice de covariance approchee.

## 📄 Description

<b>gamlike</b> evalue la log-vraisemblance negative de la distribution gamma.

## 💡 Exemple

```matlab
x = [0.5 1 2 3 5 8];
phat = gamfit(x);
nlogL = gamlike(phat, x);
```

## 🔗 Voir aussi

[gamfit](../../statistics/gamfit.md), [gampdf](../../statistics/gampdf.md), [gamcdf](../../statistics/gamcdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
