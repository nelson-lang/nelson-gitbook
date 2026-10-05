# raylcdf

Fonction de repartition Rayleigh

## 📝 Syntaxe

- p = raylcdf(x, b)
- p = raylcdf(x, b, 'upper')

## 📥 Argument d'entrée

- x - scalaire reel ou tableau : valeurs.
- b - scalaire positif ou tableau : parametre d'echelle.

## 📤 Argument de sortie

- p - tableau : probabilites cumulees.

## 📄 Description


<b>raylcdf</b> evalue les probabilites cumulees Rayleigh element par element.

## 💡 Exemple



```matlab
p = raylcdf([0 2 4], 2);
q = raylcdf([0 2 4], 2, 'upper');
```


## 🔗 Voir aussi

[raylpdf](../../statistics/2_probability_distributions/raylpdf.md), [raylinv](../../statistics/2_probability_distributions/raylinv.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
