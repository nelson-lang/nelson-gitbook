# isequalto

Renvoie true si tous les arguments x1, x2, ... , xn sont égaux (même type, mêmes dimensions, mêmes valeurs ou NaN).

## 📝 Syntaxe

- res = isequalto(x1, x2)
- res = isequalto(x1, x2, xn)

## 📥 Argument d'entrée

- x1 - une valeur
- x2 - une valeur
- xn - une valeur

## 📤 Argument de sortie

- res - une valeur logique

## 📄 Description

<b>isequalto</b> renvoie true si x1 et x2 ont le même type, la même taille et les mêmes valeurs ; sinon, elle renvoie false.

## 💡 Exemple

```matlab
A = eye(3, 3);
res = isequal(A, single(A))
res = isequalto(A, single(A))

```

## 🔗 Voir aussi

[isequal](../../elementary_functions/isequal.md), [isequaln](../../elementary_functions/isequaln.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
