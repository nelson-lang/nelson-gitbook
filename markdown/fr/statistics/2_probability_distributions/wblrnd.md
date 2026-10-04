# wblrnd

Nombres aleatoires Weibull

## 📝 Syntaxe

- r = wblrnd(a, b)
- r = wblrnd(a, b, sz)
- r = wblrnd(a, b, sz1, ..., szN)

## 📥 Argument d'entrée

- a - scalaire positif ou tableau : parametre d'echelle.
- b - scalaire positif ou tableau : parametre de forme.
- sz - scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description

<b>wblrnd</b> genere des valeurs aleatoires de loi Weibull.

## 💡 Exemple

```matlab
rng(0);
r = wblrnd(2, 3, 2, 3);
```

## 🔗 Voir aussi

[wblpdf](../../statistics/wblpdf.md), [wblcdf](../../statistics/wblcdf.md), [wblinv](../../statistics/wblinv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
