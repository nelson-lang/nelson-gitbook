# nanmin

Minimum, en ignorant les valeurs NaN.

## 📝 Syntaxe

- y = nanmin(X)
- [y, idx] = nanmin(X)
- y = nanmin(X, Y)
- [y, idx] = nanmin(X, [], dim)

## 📄 Description

<b>nanmin</b> renvoie le minimum apres suppression des valeurs <b>NaN</b> ; une tranche uniquement composee de <b>NaN</b> donne <b>NaN</b>.

<b>nanmin(X, Y)</b> renvoie le minimum element par element de <b>X</b> et <b>Y</b>, en ignorant les <b>NaN</b>.

La deuxieme sortie optionnelle <b>idx</b> contient les indices des minima. Equivalent a <b>min(X, ..., 'omitnan')</b>.

## 💡 Exemple

```matlab
[y, idx] = nanmin([4 NaN 1 NaN 3])
```

## 🔗 Voir aussi

[min](../../data_analysis/min.md), [nanmax](../../statistics/nanmax.md), [nansum](../../statistics/nansum.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
