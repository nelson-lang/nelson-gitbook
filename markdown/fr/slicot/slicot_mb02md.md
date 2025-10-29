# slicot_mb02md

Résolution du problème des moindres carrés totaux par une approche SVD.

## 📝 Syntaxe

- [RANK_OUT, C_OUT, S, X, IWARN, INFO] = slicot_mb02md(JOB, M, N, L, RANK_IN, C_IN, TOL)

## 📥 Argument d'entrée

- JOB - Détermine si les paramètres RANK et TOL doivent être fournis par l'utilisateur ou calculés par la routine : = 'R' : calculer RANK uniquement ; = 'T' : calculer TOL uniquement ; = 'B' : calculer à la fois RANK et TOL ; = 'N' : ne calculer ni RANK ni TOL.
- M - Le nombre de lignes de la matrice de données A et de la matrice d'observation B.
- N - Le nombre de colonnes de la matrice de données A.
- L - Le nombre de colonnes de la matrice d'observation B.
- RANK_IN - Si JOB = 'T' ou JOB = 'N', RANK doit préciser r, le rang de l'approximation TLS [A + DA | B + DB].
- C_IN - La partie principale M-by-(N+L) de ce tableau doit contenir les matrices A et B.
- TOL - Une tolérance utilisée pour déterminer le rang de l'approximation TLS [A+DA|B+DB] et vérifier la multiplicité des valeurs singulières de la matrice C.

## 📤 Argument de sortie

- RANK_OUT - Si JOB = 'R' ou JOB = 'B', et INFO = 0, RANK contient le rang (effectif) calculé de l'approximation TLS [A + DA | B + DB].
- C_OUT - La partie principale (N+L)-by-(N+L) de ce tableau contient les vecteurs singuliers droits (transformés), y compris les vecteurs d'espace nul, le cas échéant, de C = [A | B].
- S - Si INFO = 0, les valeurs singulières de la matrice C.
- X - Si INFO = 0, la partie principale N-by-L de ce tableau contient la solution X du problème TLS spécifié par A et B.
- IWARN - = 0 : pas d'avertissement ; = 1 : le rang de la matrice C a été réduit car une valeur singulière de multiplicité > 1 a été trouvée ; = 2 : le rang de C a été réduit car la matrice triangulaire supérieure F est (numériquement) singulière.
- INFO - = 0 : sortie réussie ;

## 📄 Description

Résoudre le problème des moindres carrés totaux (TLS) en utilisant une décomposition en valeurs singulières (SVD). Le problème TLS suppose un système surdéterminé d'équations linéaires AX = B, où la matrice de données A et la matrice d'observation B sont inexactes. La routine résout également des systèmes déterminés et sous-déterminés en calculant la solution de norme minimale. On suppose que toutes les opérations de prétraitement (mise à l'échelle, transformations de coordonnées, blanchiment, ...) ont été réalisées au préalable.

## Fonction(s) utilisée(s)

MB02MD

## 📚 Bibliographie

http://slicot.org/objects/software/shared/doc/MB02MD.html

## 💡 Exemple

```matlab
M = 6;
N = 3;
L = 1;
JOB = 'B';
TOL = 0.0;
RANK_IN = 1;
C_IN = [0.80010  0.39985  0.60005  0.89999;
   0.29996  0.69990  0.39997  0.82997;
   0.49994  0.60003  0.20012  0.79011;
   0.90013  0.20016  0.79995  0.85002;
   0.39998  0.80006  0.49985  0.99016;
   0.20002  0.90007  0.70009  1.02994];
[RANK_OUT, C_OUT, S, X, IWARN, INFO] = slicot_mb02md(JOB, M, N, L, RANK_IN, C_IN, TOL)
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

SLICOT Documentation
-->
