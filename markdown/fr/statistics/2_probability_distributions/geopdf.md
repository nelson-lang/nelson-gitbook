# geopdf

Probabilite de la loi geometrique

## 📝 Syntaxe

- y = geopdf(x, p)

## 📥 Argument d'entrée

- x - scalaire reel ou tableau : nombre d'echecs avant le premier succes.
- p - scalaire ou tableau dans l'intervalle [0, 1] : probabilite de succes.

## 📤 Argument de sortie

- y - tableau : valeurs de probabilite.

## 📄 Description


<b>geopdf</b> evalue les probabilites geometriques element par element.

## 💡 Exemple



```matlab
x = [0 1 2 5];
y = geopdf(x, 0.25);
```


## 🔗 Voir aussi

[geocdf](../../statistics/2_probability_distributions/geocdf.md), [geoinv](../../statistics/2_probability_distributions/geoinv.md), [geornd](../../statistics/2_probability_distributions/geornd.md), [geostat](../../statistics/2_probability_distributions/geostat.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
