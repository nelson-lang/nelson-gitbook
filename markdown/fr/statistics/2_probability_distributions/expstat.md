# expstat

Moyenne et variance exponentielles

## 📝 Syntaxe

- [m, v] = expstat(mu)

## 📥 Argument d'entrée

- mu - scalaire positif ou tableau : moyenne.

## 📤 Argument de sortie

- m - tableau : moyennes.
- v - tableau : variances.

## 📄 Description

<b>expstat</b> retourne la moyenne et la variance de la loi exponentielle.

## 💡 Exemple

```matlab
[m, v] = expstat(3);
```

## 🔗 Voir aussi

[exppdf](../../statistics/exppdf.md), [expcdf](../../statistics/expcdf.md), [expinv](../../statistics/expinv.md), [exprnd](../../statistics/exprnd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
