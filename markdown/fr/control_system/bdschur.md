# bdschur

Factorisation de Schur en blocs diagonaux.

## 📝 Syntaxe

- [T, B] = bdschur(A)
- [T, B] = bdschur(A, CONDMAX)

## 📥 Argument d'entrée

- A - Matrice carrée réelle.
- CONDMAX - borne supérieure sur le nombre de condition de T. Par défaut, CONDMAX = 1e4.

## 📤 Argument de sortie

- T - Matrice de transformation.
- B - Matrice diagonale par blocs obtenue par la transformation B = T \ A \* T.

## 📄 Description

<b>[T, B] = bdschur(A, CONDMAX)</b> calcule une matrice de transformation <b>T</b>, où <b>B = T \ A \* T</b> donne une matrice diagonale par blocs, chaque bloc étant une matrice de Schur quasi triangulaire supérieure, assurant la diagonalisation de la matrice A tout en préservant certaines propriétés structurelles.

## Fonction(s) utilisée(s)

MB03RD

## 📚 Bibliographie

http://slicot.org/objects/software/shared/doc/MB03RD.html

## 💡 Exemple

```matlab

A = [1.   -1.    1.    2.    3.    1.    2.    3.;
   1.    1.    3.    4.    2.    3.    4.    2.;
   0.    0.    1.   -1.    1.    5.    4.    1.;
   0.    0.    0.    1.   -1.    3.    1.    2.;
   0.    0.    0.    1.    1.    2.    3.   -1.;
   0.    0.    0.    0.    0.    1.    5.    1.;
   0.    0.    0.    0.    0.    0.    0.99999999   -0.99999999;
   0.    0.    0.    0.    0.    0.    0.99999999    0.99999999];
[T, B] = bdschur(A)

```

## 🔗 Voir aussi

[slicot_mb03rd](../slicot/slicot_mb03rd.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

SLICOT Documentation
-->
