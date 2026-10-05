# wblcdf

Fonction de repartition Weibull

## 📝 Syntaxe

- p = wblcdf(x)
- p = wblcdf(x, a)
- p = wblcdf(x, a, b)
- p = wblcdf(x, a, b, 'upper')

## 📥 Argument d'entrée

- x - scalaire reel ou tableau : valeurs.
- a - scalaire positif ou tableau : parametre d'echelle. La valeur par defaut est 1.
- b - scalaire positif ou tableau : parametre de forme. La valeur par defaut est 1.
- 'upper' - option pour retourner la probabilite de queue superieure.

## 📤 Argument de sortie

- p - tableau : valeurs de probabilite.

## 📄 Description


<b>wblcdf</b> evalue les probabilites cumulees Weibull element par element.

## 💡 Exemple



```matlab
x = [0 2 4];
p = wblcdf(x, 2, 3);
```


## 🔗 Voir aussi

[wblpdf](../../statistics/2_probability_distributions/wblpdf.md), [wblinv](../../statistics/2_probability_distributions/wblinv.md), [wblrnd](../../statistics/2_probability_distributions/wblrnd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
