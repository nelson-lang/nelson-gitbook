# geostat

Moyenne et variance geometriques

## 📝 Syntaxe

- [m, v] = geostat(p)

## 📥 Argument d'entrée

- p - scalaire ou tableau dans l'intervalle [0, 1] : probabilite de succes.

## 📤 Argument de sortie

- m - tableau : moyennes.
- v - tableau : variances.

## 📄 Description

<b>geostat</b> retourne la moyenne et la variance de la loi geometrique.

## 💡 Exemple

```matlab
[m, v] = geostat(0.25);
```

## 🔗 Voir aussi

[geopdf](../../statistics/geopdf.md), [geocdf](../../statistics/geocdf.md), [geoinv](../../statistics/geoinv.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
