# isinf

Recherche les éléments infinis.

## 📝 Syntaxe

- tf = isinf(M)

## 📥 Argument d'entrée

- M - une variable

## 📤 Argument de sortie

- tf - logique : résultat de 'isinf'.

## 📄 Description

<b>isinf</b> renvoie un tableau logique qui vaut true là où les éléments de M sont des valeurs infinies.

## 💡 Exemple

```matlab
isnan(pi)
isinf(Inf)
isinf(-Inf)
isinf(int32(3))
X = sparse([1 2 NaN 3 0 Inf 0 4]);
R = isinf(X)
```

## 🔗 Voir aussi

[isnan](../../elementary_functions/isnan.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
