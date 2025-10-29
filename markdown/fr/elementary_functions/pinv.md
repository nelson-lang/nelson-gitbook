# pinv

Moore-Penrose pseudoinverse

## 📝 Syntaxe

- y = pinv(A)
- y = pinv(A, tol)

## 📥 Argument d'entrée

- A - matrix: input matrix
- tol - scalar: singular value tolerance

## 📤 Argument de sortie

- y - Moore-Penrose Pseudoinverse of matrix A.

## 📄 Description

<b>pinv</b> returns Moore-Penrose Pseudoinverse of matrix A.

## 💡 Exemple

```matlab
A = [1, 2, 3; 4, 5, 6];
R = pinv(A)
R = pinv(A, 2)
```

## 🔗 Voir aussi

[inv](../linear_algebra/inv.md), [svd](../linear_algebra/svd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
