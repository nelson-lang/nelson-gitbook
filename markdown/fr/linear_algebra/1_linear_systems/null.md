# null

Noyau d'une matrice

## 📝 Syntaxe

- Z = null(A)
- Z = null(A, 'r')

## 📥 Argument d'entrée

- A - une matrice numérique 2D.

## 📤 Argument de sortie

- Z - base orthonormale du noyau de A ; avec 'r', une base rationnelle.

## 📄 Description


<b>null</b> retourne une base orthonormale du noyau de A, obtenue à partir de la décomposition en valeurs singulières. null(A, 'r') retourne une base rationnelle du noyau obtenue à partir de la forme échelonnée réduite.

## 💡 Exemple



```matlab
A = [1 2 3; 4 5 6; 7 8 9];
Z = null(A)
```


## 🔗 Voir aussi

[orth](../../linear_algebra/1_linear_systems/orth.md), [rank](../../linear_algebra/1_linear_systems/rank.md), [svd](../../linear_algebra/3_eigen_singular_values/svd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
