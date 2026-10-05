# wblinv

Inverse de la fonction de repartition Weibull

## 📝 Syntaxe

- x = wblinv(p)
- x = wblinv(p, a)
- x = wblinv(p, a, b)

## 📥 Argument d'entrée

- p - scalaire reel ou tableau : valeurs de probabilite.
- a - scalaire positif ou tableau : parametre d'echelle. La valeur par defaut est 1.
- b - scalaire positif ou tableau : parametre de forme. La valeur par defaut est 1.

## 📤 Argument de sortie

- x - tableau : valeurs de probabilite inverse.

## 📄 Description


<b>wblinv</b> evalue les probabilites cumulees inverses Weibull element par element.

## 💡 Exemple



```matlab
p = [0 0.5 0.9];
x = wblinv(p, 2, 3);
```


## 🔗 Voir aussi

[wblpdf](../../statistics/2_probability_distributions/wblpdf.md), [wblcdf](../../statistics/2_probability_distributions/wblcdf.md), [wblrnd](../../statistics/2_probability_distributions/wblrnd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
