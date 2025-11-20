# slicot_sb03md

Résolution des équations de Lyapunov temps continu ou discret et estimation de séparation.

## 📝 Syntaxe

- [U\_OUT, C\_OUT, SCALE, SEP, FERR, WR, WI, INFO] = slicot_sb03md(DICO, JOB, FACT, TRANA, A, U_IN, C_IN)

## 📥 Argument d'entrée

- DICO - Spécifie le type d'équation de Lyapunov à résoudre : = 'C' : cas continu ; = 'D' : cas discret.
- JOB - Spécifie le calcul à effectuer : 'X' : calculer la solution uniquement ; = 'S' : calculer la séparation uniquement ; = 'B' : calculer à la fois la solution et la séparation.
- FACT - Spécifie si la factorisation de Schur réelle de A est fournie à l'entrée : = 'F' : A et Q contiennent les facteurs ; = 'N' : la factorisation sera calculée et stockée dans A et Q.
- TRANA - Spécifie la forme d'op(A) à utiliser : = 'N' : op(A) = A (sans transposition) ; = 'T' : op(A) = A\*\*T (transposée) ; = 'C' : op(A) = A\*\*T (conjuguée transposée = transposée).
- A - La partie principale N-by-N de ce tableau doit contenir la matrice A. Si FACT = 'F', alors A contient une matrice quasi-triangulaire supérieure en forme canonique de Schur ; les éléments sous la partie Hessenberg supérieure de A ne sont pas référencés.
- U_IN - Si FACT = 'N', zeros(N, N) ; si FACT = 'F', U est un argument d'entrée et doit contenir la matrice orthogonale U de la factorisation de Schur réelle de A.
- C_IN - Si JOB = 'X' ou 'B', la partie principale N-by-N de ce tableau doit contenir la matrice symétrique C.

## 📤 Argument de sortie

- U_OUT - Si INFO = 0 ou INFO = N+1, contient la matrice orthogonale N-by-N de la factorisation de Schur réelle de A.
- C_OUT - Si JOB = 'X' ou 'B', et INFO = 0 ou N+1, la partie principale N-by-N de C a été écrasée par la matrice solution symétrique X.
- SCALE - Le facteur d'échelle, scale, fixé ≤ 1 pour éviter un débordement de la solution.
- SEP - Si JOB = 'S' ou 'B', et INFO = 0 ou N+1, SEP contient la séparation estimée des matrices op(A) et -op(A)' si DICO = 'C', ou op(A) et op(A)' si DICO = 'D'.
- FERR - Si JOB = 'B', et INFO = 0 ou N+1, FERR contient une estimation de la borne d'erreur directe pour la solution X.
- WR - Si FACT = 'N', et INFO = 0 ou N+1, WR contient les parties réelles des valeurs propres de A.
- WI - Si FACT = 'N', et INFO = 0 ou N+1, WI contient les parties imaginaires des valeurs propres de A.
- INFO - = 0 : sortie réussie ;

## 📄 Description

Résoudre pour X soit l'équation de Lyapunov continue réelle

op(A)'\*X + X\*op(A) = scale\*C

ou l'équation de Lyapunov discrète réelle

op(A)'\*X\*op(A) - X = scale\*C

et/ou estimer un nombre de condition associé, appelé séparation, où op(A) = A ou A' et C est symétrique (C = C').

## Fonction(s) utilisée(s)

SB03MD

## 📚 Bibliographie

http://slicot.org/objects/software/shared/doc/SB03MD.html

## 💡 Exemple

```matlab
N = 3;
DICO = 'D';
FACT = 'N';
JOB = 'X';
TRANA = 'N';

A = [3.0   1.0   1.0;
   1.0   3.0   0.0;
   0.0   0.0   3.0];

U_IN = zeros(N, N);

C_IN = [25.0  24.0  15.0;
  24.0  32.0   8.0;
  15.0   8.0  40.0];

[U_OUT, C_OUT, SCALE, SEP, FERR, WR, WI, INFO] = slicot_sb03md(DICO, JOB, FACT, TRANA, A, U_IN, C_IN)
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

SLICOT Documentation
-->
