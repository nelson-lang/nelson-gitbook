# geofit

Estimation de probabilite geometrique

## 📝 Syntaxe

- pHat = geofit(x)
- [pHat, pCI] = geofit(x, alpha)

## 📥 Argument d'entrée

- x - vecteur ou matrice reel non vide d'entiers finis positifs ou nuls : nombres d'echecs avant succes.
- alpha - scalaire dans l'intervalle [0, 1] : niveau de signification. La valeur par defaut est 0.05.

## 📤 Argument de sortie

- pHat - tableau : estimations de probabilite de succes.
- pCI - tableau : intervalles de confiance des estimations.

## 📄 Description

<b>geofit</b> estime la probabilite de succes de la loi geometrique.

## 💡 Exemple

```matlab
x = [0 1 2 3 5 8];
[pHat, pCI] = geofit(x);
```

## 🔗 Voir aussi

[geolike](../../statistics/geolike.md), [geopdf](../../statistics/geopdf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
