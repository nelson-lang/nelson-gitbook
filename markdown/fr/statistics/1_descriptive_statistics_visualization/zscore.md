# zscore

Scores z standardises.

## 📝 Syntaxe

- Z = zscore(X)
- Z = zscore(X, flag)
- Z = zscore(X, flag, dim)
- Z = zscore(X, flag, vecdim)
- Z = zscore(X, flag, 'all')
- [Z, mu, sigma] = zscore(...)

## 📄 Description

<b>zscore</b> centre et reduit des donnees numeriques en soustrayant la moyenne puis en divisant par l'ecart type.

<b>flag</b> vaut 0 pour l'ecart type d'echantillon et 1 pour l'ecart type de population. Les echantillons contenant <b>NaN</b> retournent des scores <b>NaN</b>. Les echantillons constants retournent des scores nuls.

## 💡 Exemple

```matlab
X = [1 2 3; 4 5 6];
[Z, mu, sigma] = zscore(X, 0, 1)
```

## 🔗 Voir aussi

[mean](../../statistics/mean.md), [std](../../statistics/std.md), [var](../../statistics/var.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
