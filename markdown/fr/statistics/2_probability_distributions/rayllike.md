# rayllike

Log-vraisemblance negative Rayleigh

## 📝 Syntaxe

- nlogL = rayllike(b, x)
- [nlogL, avar] = rayllike(b, x, censoring, freq)

## 📥 Argument d'entrée

- b - scalaire positif : parametre d'echelle.
- x - tableau reel non negatif fini non vide : donnees d'echantillon.
- censoring - tableau contenant les valeurs 0 ou 1 : indicateurs de censure a droite.
- freq - tableau de valeurs finies non negatives : frequences des observations.

## 📤 Argument de sortie

- nlogL - scalaire : log-vraisemblance negative.
- avar - scalaire : variance approchee.

## 📄 Description

<b>rayllike</b> evalue la log-vraisemblance negative de la distribution Rayleigh.

## 💡 Exemple

```matlab
x = [0.5 1 2 3 5 8];
b = raylfit(x);
nlogL = rayllike(b, x);
```

## 🔗 Voir aussi

[raylfit](../../statistics/raylfit.md), [raylpdf](../../statistics/raylpdf.md), [raylcdf](../../statistics/raylcdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
