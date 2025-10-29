# nthroot

The real 𝑛th root of real number.

## 📝 Syntaxe

- Y = nthroot(X, N)

## 📥 Argument d'entrée

- X - Input array: scalar, vector, matrix or multidimensional array.
- N - Roots to calculate: scalar or array of same size as X.

## 📤 Argument de sortie

- Y - result of 'nthroot'.

## 📄 Description

<b>𝑌 = nthroot(𝑋, 𝑁)</b> returns the real 𝑛th root of the elements of <b>𝑋</b>.

Both <b>𝑋</b> and <b>𝑁</b> must be real scalars or arrays of the same size. If an element in <b>𝑋</b> is negative, the corresponding element in <b>𝑁</b> must be an odd integer.

When computing roots where both real and complex roots exist, the <b>power</b> function efficiently computes only the complex roots.

To obtain the real root in such cases, use the nthroot function instead.

## 💡 Exemple

```matlab
X = [-2 -3 -2; 4 -2 -5]
N = [1 -1 3; 1/2 5 3]
Y = nthroot(X, N)
```

## 🔗 Voir aussi

[power](../operators/power.md), [sqrt](../elementary_functions/sqrt.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.6.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
