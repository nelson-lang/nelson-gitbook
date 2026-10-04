# geolike

Oppose de la log-vraisemblance geometrique

## 📝 Syntaxe

- nlogL = geolike(p, x)
- [nlogL, avar] = geolike(p, x)

## 📥 Argument d'entrée

- p - scalaire dans l'intervalle [0, 1] : probabilite de succes.
- x - tableau reel non vide d'entiers finis positifs ou nuls : nombres d'echecs avant succes.

## 📤 Argument de sortie

- nlogL - scalaire : oppose de la log-vraisemblance.
- avar - scalaire : estimation de variance asymptotique.

## 📄 Description

<b>geolike</b> retourne l'oppose de la log-vraisemblance pour des donnees de loi geometrique et l'estimation de variance asymptotique.

## 💡 Exemple

```matlab
x = [0 1 2 3 5 8];
[nlogL, avar] = geolike(0.25, x);
```

## 🔗 Voir aussi

[geofit](../../statistics/geofit.md), [geopdf](../../statistics/geopdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
