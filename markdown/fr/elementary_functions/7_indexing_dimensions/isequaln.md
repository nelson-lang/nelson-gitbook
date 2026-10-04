# isequaln

Renvoie true si tous les arguments x1, x2, ... , xn sont égaux (mêmes dimensions, mêmes valeurs ou NaN).

## 📝 Syntaxe

- res = isequaln(x1, x2)
- res = isequaln(x1, x2, xn)

## 📥 Argument d'entrée

- x1 - une valeur
- x2 - une valeur
- xn - une valeur

## 📤 Argument de sortie

- res - une valeur logique

## 📄 Description

<b>isequaln</b> renvoie true si x1 et x2 ont la même taille et les mêmes valeurs ; sinon, elle renvoie false.<b>isequaln</b> compare les parties réelle et imaginaire des tableaux numériques. Les valeurs NaN (Not a Number) sont considérées comme <b>égales</b> aux autres éléments.

## 💡 Exemples

```matlab
A = eye(3, 3);
res = isequaln(A, A)
```

```matlab
A = eye(3, 3);
B = single(A)
res = isequaln(A, B)
res = isequalto(A, B)
```

```matlab
res = isequaln('nel', 'son')
```

```matlab
res = isequaln(NaN, NaN)
```

## 🔗 Voir aussi

[isequal](../../elementary_functions/isequal.md), [isequalto](../../elementary_functions/isequalto.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
