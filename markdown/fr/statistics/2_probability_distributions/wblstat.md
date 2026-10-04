# wblstat

Moyenne et variance Weibull

## 📝 Syntaxe

- [m, v] = wblstat(a, b)

## 📥 Argument d'entrée

- a - scalaire positif ou tableau : parametre d'echelle.
- b - scalaire positif ou tableau : parametre de forme.

## 📤 Argument de sortie

- m - tableau : moyennes.
- v - tableau : variances.

## 📄 Description

<b>wblstat</b> retourne la moyenne et la variance de la loi Weibull.

## 💡 Exemple

```matlab
[m, v] = wblstat(2, 3);
```

## 🔗 Voir aussi

[wblpdf](../../statistics/wblpdf.md), [wblcdf](../../statistics/wblcdf.md), [wblinv](../../statistics/wblinv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
