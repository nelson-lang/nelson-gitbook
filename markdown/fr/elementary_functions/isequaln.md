# isequaln

Return true if all arguments x1, x2, ... , xn are equal (same dimensions, same values or NaNs).

## 📝 Syntaxe

- res = isequaln(x1, x2)
- res = isequaln(x1, x2, xn)

## 📥 Argument d'entrée

- x1 - a value
- x2 - a value
- xn - a value

## 📤 Argument de sortie

- res - a logical value

## 📄 Description

<b>isequaln</b> returns true if x1 and x2 are the same size and same values; otherwise, it returns false.<b>isequaln</b> compares real and imaginary parts of numeric arrays. NaN (Not a Number) values are considered to be <b>equal</b> to other elements.

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

[isequal](../elementary_functions/isequal.md), [isequalto](../elementary_functions/isequalto.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
