# wblpdf

Densite de probabilite Weibull

## 📝 Syntaxe

- y = wblpdf(x)
- y = wblpdf(x, a)
- y = wblpdf(x, a, b)

## 📥 Argument d'entrée

- x - scalaire reel ou tableau : valeurs.
- a - scalaire positif ou tableau : parametre d'echelle. La valeur par defaut est 1.
- b - scalaire positif ou tableau : parametre de forme. La valeur par defaut est 1.

## 📤 Argument de sortie

- y - tableau : valeurs de densite.

## 📄 Description

<b>wblpdf</b> evalue les densites Weibull element par element.

## 💡 Exemple

```matlab
x = [0 2 4];
y = wblpdf(x, 2, 3);
```

## 🔗 Voir aussi

[wblcdf](../../statistics/wblcdf.md), [wblinv](../../statistics/wblinv.md), [wblrnd](../../statistics/wblrnd.md), [wblstat](../../statistics/wblstat.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
