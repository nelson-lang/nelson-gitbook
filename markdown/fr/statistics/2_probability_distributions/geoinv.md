# geoinv

Inverse de la fonction de repartition geometrique

## 📝 Syntaxe

- x = geoinv(y, p)

## 📥 Argument d'entrée

- y - scalaire reel ou tableau : valeurs de probabilite.
- p - scalaire ou tableau dans l'intervalle [0, 1] : probabilite de succes.

## 📤 Argument de sortie

- x - tableau : valeurs de probabilite inverse.

## 📄 Description

<b>geoinv</b> evalue les probabilites cumulees inverses geometriques element par element.

## 💡 Exemple

```matlab
y = [0 0.25 0.9];
x = geoinv(y, 0.25);
```

## 🔗 Voir aussi

[geopdf](../../statistics/geopdf.md), [geocdf](../../statistics/geocdf.md), [geornd](../../statistics/geornd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
