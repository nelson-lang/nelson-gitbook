# balance

Mise à l'échelle diagonale pour améliorer la précision des valeurs propres.

## 📝 Syntaxe

- B = balance(A)
- B = balance(A,'noperm')
- [T, B] = balance(A)
- [S, P, B] = balance(A)

## 📥 Argument d'entrée

- A - une matrice carrée, finie (simple ou double précision).

## 📤 Argument de sortie

- B - matrice équilibrée.
- T - transformation de similarité : réarrange les éléments d'une matrice diagonale contenant des puissances entières de deux afin de minimiser l'impact des erreurs d'arrondi.
- S - vecteur d'échelle
- P - vecteur de permutation

## 📄 Description

<b>B = balance(A)</b> retourne la matrice équilibrée <b>B</b>.

<b>B = balance(A, 'noperm')</b> met à l'échelle <b>A</b> sans permuter ses lignes et colonnes.

## Fonction(s) utilisée(s)

LAPACK dgebal, LAPACK sgebal, LAPACK zgebal, LAPACK cgebal

## 💡 Exemple

```matlab
A = [10  1000  100000; .1  10  1000; .001  .1  10]
F = balance(A)

```

## 🔗 Voir aussi

[eig](../../linear_algebra/eig.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
