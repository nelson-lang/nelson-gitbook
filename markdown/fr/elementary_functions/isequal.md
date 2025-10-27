# isequal

Return true if all arguments x1, x2, ... , xn are equal (same dimensions, same values).

## 📝 Syntaxe

- res = isequal(x1, x2)
- res = isequal(x1, x2, xn)

## 📥 Argument d'entrée

- x1 - a value
- x2 - a value
- xn - a value

## 📤 Argument de sortie

- res - a logical value

## 📄 Description

<b>isequal</b> returns true if x1 and x2 are the same size and their contents are of equal value; otherwise, it returns false.

<b>isequal</b> compares real and imaginary parts of numeric arrays. NaN (Not a Number) values are considered to be NOT <b>equal</b> to other elements.

## 💡 Exemples

```matlab
A = eye(3, 3);
res = isequal(A, A)
```

```matlab
A = eye(3, 3);
B = single(A)
res = isequal(A, B)
res = isequalto(A, B)
```

```matlab
res = isequal('nel', 'son')
```

```matlab
res = isequalnNaN, NaN)
```

## 🔗 Voir aussi

[isequaln](../elementary_functions/isequaln.md), [isequalto](../elementary_functions/isequalto.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
