# geocdf

Fonction de repartition geometrique

## 📝 Syntaxe

- y = geocdf(x, p)
- y = geocdf(x, p, 'upper')

## 📥 Argument d'entrée

- x - scalaire reel ou tableau : nombre d'echecs avant le premier succes.
- p - scalaire ou tableau dans l'intervalle [0, 1] : probabilite de succes.
- 'upper' - option pour retourner la probabilite de queue superieure.

## 📤 Argument de sortie

- y - tableau : valeurs de probabilite.

## 📄 Description

<b>geocdf</b> evalue les probabilites cumulees geometriques element par element.

## 💡 Exemple

```matlab
x = [0 1 2 5];
y = geocdf(x, 0.25);
```

## 🔗 Voir aussi

[geopdf](../../statistics/geopdf.md), [geoinv](../../statistics/geoinv.md), [geornd](../../statistics/geornd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
