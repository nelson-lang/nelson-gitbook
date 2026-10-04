# pinv

Pseudo-inverse de Moore-Penrose

## 📝 Syntaxe

- y = pinv(A)
- y = pinv(A, tol)

## 📥 Argument d'entrée

- A - matrice : matrice d'entrée
- tol - scalaire : tolérance sur les valeurs singulières

## 📤 Argument de sortie

- y - Pseudo-inverse de Moore-Penrose de la matrice A.

## 📄 Description

<b>pinv</b> renvoie la pseudo-inverse de Moore-Penrose de la matrice A.

## 💡 Exemple

```matlab
A = [1, 2, 3; 4, 5, 6];
R = pinv(A)
R = pinv(A, 2)
```

## 🔗 Voir aussi

[inv](../../linear_algebra/inv.md), [svd](../../linear_algebra/svd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
