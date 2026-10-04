# geornd

Nombres aleatoires geometriques

## 📝 Syntaxe

- r = geornd(p)
- r = geornd(p, sz)
- r = geornd(p, sz1, ..., szN)

## 📥 Argument d'entrée

- p - scalaire ou tableau dans l'intervalle [0, 1] : probabilite de succes.
- sz - scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

## 📤 Argument de sortie

- r - tableau : valeurs aleatoires.

## 📄 Description

<b>geornd</b> genere des valeurs aleatoires de loi geometrique.

## 💡 Exemple

```matlab
rng(0);
r = geornd(0.25, 2, 3);
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
