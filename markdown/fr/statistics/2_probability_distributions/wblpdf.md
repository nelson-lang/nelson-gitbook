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

[wblcdf](../../statistics/2_probability_distributions/wblcdf.md), [wblinv](../../statistics/2_probability_distributions/wblinv.md), [wblrnd](../../statistics/2_probability_distributions/wblrnd.md), [wblstat](../../statistics/2_probability_distributions/wblstat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
