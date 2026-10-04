# isfinite

Recherche les éléments finis.

## 📝 Syntaxe

- tf = isfinite(M)

## 📥 Argument d'entrée

- M - une variable

## 📤 Argument de sortie

- tf - logique : résultat de 'isfinite'.

## 📄 Description

<b>isfinite</b> renvoie un tableau logique qui vaut true là où les éléments de M sont des valeurs finies.

## 💡 Exemple

```matlab
isfinite(pi)
isfinite(Inf)
isfinite(-Inf)
isfinite(int32(3))
X = sparse([1 2 NaN 3 0 Inf 0 4]);
R = isfinite(X)
```

## 🔗 Voir aussi

[isnan](../../elementary_functions/isnan.md), [isinf](../../elementary_functions/isinf.md), [allfinite](../../elementary_functions/allfinite.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
