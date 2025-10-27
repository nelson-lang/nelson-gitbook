# slicot_sb04qd

Résolution des équations de Sylvester temps discret (méthode Hessenberg-Schur).

## 📝 Syntaxe

- [A_OUT, B_OUT, C_OUT, Z, INFO] = slicot_sb04qd(A_IN, B_IN, C_IN)

## 📥 Argument d'entrée

- A_IN - La partie principale N-by-N de ce tableau doit contenir la matrice de coefficient A de l'équation.
- B_IN - La partie principale M-by-M de ce tableau doit contenir la matrice de coefficient B de l'équation.
- C_IN - La partie principale N-by-M de ce tableau doit contenir la matrice de coefficient C de l'équation.

## 📤 Argument de sortie

- A_OUT - La partie principale N-by-N en Hessenberg supérieur de ce tableau contient la matrice H, et le reste de la partie principale N-by-N, ainsi que les éléments 2,3,...,N du tableau DWORK, contiennent la matrice de transformation orthogonale U (stockée en forme factorisée).
- B_OUT - La partie principale M-by-M de ce tableau contient le facteur de Schur quasi-triangulaire S de la matrice B'.
- C_OUT - La partie principale N-by-M de ce tableau contient la matrice solution X du problème.
- Z - La partie principale M-by-M de ce tableau contient la matrice orthogonale Z utilisée pour transformer B' en forme de Schur réelle supérieure.
- INFO - = 0 : sortie réussie ;

## 📄 Description

Résoudre pour X l'équation de Sylvester discrète X + A X B = C, où A, B, C et X sont respectivement des matrices N-by-N, M-by-M, N-by-M et N-by-M générales. Une méthode Hessenberg-Schur, qui réduit A en forme Hessenberg supérieure H = U' A U et B' en forme de Schur réelle S = Z' B' Z (avec U, Z orthogonales), est utilisée.

## Fonction(s) utilisée(s)

SB04QD

## 📚 Bibliographie

http://slicot.org/objects/software/shared/doc/SB04QD.html

## 💡 Exemple

```matlab
N = 3;
M = 3;
A_IN = [1.0   2.0   3.0;
   6.0   7.0   8.0;
   9.0   2.0   3.0];
B_IN = [7.0   2.0   3.0;
   2.0   1.0   2.0;
   3.0   4.0   1.0];
C_IN = [271.0   135.0   147.0;
   923.0   494.0   482.0;
   578.0   383.0   287.0];

[A_OUT, B_OUT, C_OUT, Z, INFO] = slicot_sb04qd(A_IN, B_IN, C_IN)
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

SLICOT Documentation
