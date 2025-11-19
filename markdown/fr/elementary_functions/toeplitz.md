# toeplitz

Toeplitz matrix

## 📝 Syntaxe

- T = toeplitz(c, r)
- T = toeplitz(r)

## 📥 Argument d'entrée

- c - a scalar or vector: column of Toeplitz matrix.
- r - a scalar or vector: row of Toeplitz matrix.

## 📤 Argument de sortie

- T - Toeplitz matrix.

## 📄 Description

<b>T = toeplitz(c, r)</b> returns the Toeplitz matrix whose first row is<b>r</b> and first column is <b>c</b>.

<b>T = toeplitz(c)</b> returns the symmetric Toeplitz matrix.

## 📚 Bibliographie

https://en.wikipedia.org/wiki/Toeplitz_matrix

## 💡 Exemple

```matlab
T = toeplitz(1:5, 1:2:7)
```

## 🔗 Voir aussi

[hankel](../elementary_functions/hankel.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
