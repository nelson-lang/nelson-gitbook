# unifstat

Moyenne et variance uniformes continues

## 📝 Syntaxe

- [m, v] = unifstat(a, b)

## 📥 Argument d'entrée

- a - scalaire reel ou tableau : borne inferieure.
- b - scalaire reel ou tableau : borne superieure.

## 📤 Argument de sortie

- m - tableau : moyennes.
- v - tableau : variances.

## 📄 Description

<b>unifstat</b> renvoie la moyenne et la variance element par element de lois uniformes continues.

Les bornes scalaires sont etendues pour correspondre aux bornes tableau. Les intervalles invalides produisent des valeurs NaN.

## 💡 Exemple

```matlab
[m, v] = unifstat(0, 1);
a = 1:6;
b = 2 * a;
[m2, v2] = unifstat(a, b);
```

## 🔗 Voir aussi

[unifpdf](../../statistics/unifpdf.md), [unifcdf](../../statistics/unifcdf.md), [unifinv](../../statistics/unifinv.md), [unifrnd](../../statistics/unifrnd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
