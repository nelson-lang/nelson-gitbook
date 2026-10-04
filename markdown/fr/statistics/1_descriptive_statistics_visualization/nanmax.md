# nanmax

Maximum, en ignorant les valeurs NaN.

## 📝 Syntaxe

- y = nanmax(X)
- [y, idx] = nanmax(X)
- y = nanmax(X, Y)
- [y, idx] = nanmax(X, [], dim)

## 📄 Description

<b>nanmax</b> renvoie le maximum apres suppression des valeurs <b>NaN</b> ; une tranche uniquement composee de <b>NaN</b> donne <b>NaN</b>.

<b>nanmax(X, Y)</b> renvoie le maximum element par element de <b>X</b> et <b>Y</b>, en ignorant les <b>NaN</b>.

La deuxieme sortie optionnelle <b>idx</b> contient les indices des maxima. Equivalent a <b>max(X, ..., 'omitnan')</b>.

## 💡 Exemple

```matlab
[y, idx] = nanmax([1 NaN 5 NaN 3])
```

## 🔗 Voir aussi

[max](../../data_analysis/max.md), [nanmin](../../statistics/nanmin.md), [nansum](../../statistics/nansum.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
