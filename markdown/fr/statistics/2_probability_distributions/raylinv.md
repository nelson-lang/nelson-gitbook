# raylinv

Inverse de repartition Rayleigh

## 📝 Syntaxe

- x = raylinv(p, b)

## 📥 Argument d'entrée

- p - probabilites dans [0, 1].
- b - scalaire positif ou tableau : parametre d'echelle.

## 📤 Argument de sortie

- x - tableau : valeurs inverses cumulees.

## 📄 Description


<b>raylinv</b> evalue les inverses Rayleigh element par element.

## 💡 Exemple



```matlab
p = [0 0.3934693402873666 0.8646647167633873];
x = raylinv(p, 2);
```


## 🔗 Voir aussi

[raylpdf](../../statistics/2_probability_distributions/raylpdf.md), [raylcdf](../../statistics/2_probability_distributions/raylcdf.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
