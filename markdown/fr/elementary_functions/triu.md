# triu

Upper triangular part of matrix

## 📝 Syntaxe

- T = triu(M)
- T = triu(M, k)

## 📥 Argument d'entrée

- M - 2D input matrix
- k - Diagonals to include: integer real value

## 📤 Argument de sortie

- R - Upper Triangular Portions of Matrix

## 📄 Description

<b>triu</b> computes Upper Triangular Portions of Matrix.

<b>R = triu(M, k)</b> returns the elements on and above the kth diagonal of M.

## 💡 Exemple

```matlab
x = [1+i,-i;i,2i];
r = triu(x)
```

## 🔗 Voir aussi

[diag](../constructors_functions/diag.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
