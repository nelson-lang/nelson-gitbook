# trimmean

Moyenne apres suppression des valeurs extremes.

## 📝 Syntaxe

- m = trimmean(X, percent)
- m = trimmean(X, percent, flag)
- m = trimmean(..., dim)
- m = trimmean(..., vecdim)
- m = trimmean(..., 'all')

## 📄 Description

<b>trimmean</b> calcule la moyenne apres suppression d'un pourcentage des plus petites et plus grandes valeurs. Les valeurs <b>NaN</b> sont omises.

<b>flag</b> controle les comptes de rognage non entiers et peut valoir <b>round</b>, <b>floor</b> ou <b>weighted</b>.

## 💡 Exemple

```matlab
X = reshape(1:40, [5 4 2]);
X([3 37]) = -100;
m = trimmean(X, 10, [1 2])
```

## 🔗 Voir aussi

[mean](../../statistics/mean.md), [median](../../statistics/median.md), [geomean](../../statistics/geomean.md), [harmmean](../../statistics/harmmean.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
