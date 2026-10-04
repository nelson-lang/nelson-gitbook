# nanmean

Moyenne en ignorant les valeurs NaN.

## 📝 Syntaxe

- m = nanmean(X)
- m = nanmean(X, dim)
- m = nanmean(X, vecdim)
- m = nanmean(X, 'all')

## 📄 Description

<b>nanmean</b> calcule la moyenne apres suppression des valeurs <b>NaN</b> dans chaque tranche traitee.

La dimension par defaut est la premiere dimension non singleton.

## 💡 Exemple

```matlab
X = magic(3);
X([1 6:9]) = NaN;
m = nanmean(X)
```

## 🔗 Voir aussi

[mean](../../statistics/mean.md), [nanmedian](../../statistics/nanmedian.md), [nanstd](../../statistics/nanstd.md), [nanvar](../../statistics/nanvar.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
