# nanstd

Ecart type en ignorant les valeurs NaN.

## 📝 Syntaxe

- s = nanstd(X)
- s = nanstd(X, flag)
- s = nanstd(X, flag, dim)
- s = nanstd(X, flag, vecdim)
- s = nanstd(X, flag, 'all')

## 📄 Description

<b>nanstd</b> calcule l'ecart type apres suppression des valeurs <b>NaN</b> dans chaque tranche traitee.

<b>flag</b> vaut <b>0</b> pour la normalisation echantillon et <b>1</b> pour la normalisation population.

## 💡 Exemple

```matlab
X = magic(3);
X([1 6:9]) = NaN;
s = nanstd(X, 0, 2)
```

## 🔗 Voir aussi

[std](../../statistics/std.md), [nanmean](../../statistics/nanmean.md), [nanmedian](../../statistics/nanmedian.md), [nanvar](../../statistics/nanvar.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
