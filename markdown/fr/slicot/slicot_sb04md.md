# slicot_sb04md

Résolution des équations de Sylvester temps continu (méthode Hessenberg-Schur).

## Syntaxe

- [A_OUT, B_OUT, C_OUT, Z, INFO] = slicot_sb04md(A_IN, B_IN, C_IN)

## Argument d'entrée

- A_IN - La partie principale N-by-N de ce tableau doit contenir la matrice de coefficient A de l'équation.
- B_IN - La partie principale M-by-M de ce tableau doit contenir la matrice de coefficient B de l'équation.
- C_IN - La partie principale N-by-M de ce tableau doit contenir la matrice de coefficient C de l'équation.

## Argument de sortie

- A_OUT - La partie principale N-by-N de ce tableau, en Hessenberg supérieur, contient la matrice H, et le reste de la partie principale N-by-N, ainsi que les éléments 2,3,...,N du tableau DWORK, contiennent la matrice de transformation orthogonale U (stockée en forme factorisée).
- B_OUT - La partie principale M-by-M de ce tableau contient le facteur de Schur quasi-triangulaire S de la matrice B'.
- C_OUT - La partie principale N-by-M de ce tableau contient la matrice solution X du problème.
- Z - La partie principale M-by-M de ce tableau contient la matrice orthogonale Z utilisée pour transformer B' en forme de Schur réelle supérieure.
- INFO - = 0 : sortie réussie ;

## Description

<p>Résoudre pour X l'équation de Sylvester continue AX + XB = C où A, B, C et X sont respectivement des matrices N-by-N, M-by-M, N-by-M et N-by-M générales.</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/SB04MD.html

## Fonction(s) utilisée(s)

SB04MD

## Exemple

```matlab
N = 3;
M = 2;
A_IN = [2.0   1.0   3.0;
   0.0   2.0   1.0;
   6.0   1.0   2.0];
B_IN = [2.0   1.0;
   1.0   6.0];
C_IN = [2.0   1.0;
   1.0   4.0;
   0.0   5.0];
[A_OUT, B_OUT, C_OUT, Z, INFO] = slicot_sb04md(A_IN, B_IN, C_IN)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
