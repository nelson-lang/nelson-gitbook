# slicot_mb03rd

Réduction d'une matrice en forme de Schur réelle vers une forme bloc-diagonale.

## 📝 Syntaxe

- [A_OUT, X_OUT, NBLCKS, BLSIZE, WR, WI, INFO] = slicot_mb03rd(JOBX, SORT, PMAX, A_IN, X_IN, TOL)

## 📥 Argument d'entrée

- JOBX - Spécifie si les transformations sont accumulées : = 'N' : non accumulées ; = 'U' : accumulées dans X (la matrice X donnée est mise à jour).
- SORT - Spécifie si les blocs diagonaux de la forme de Schur réelle sont réordonnés : = 'N' : pas de réordonnancement ; = 'S' : réordonnés avant chaque étape de réduction pour regrouper les valeurs propres proches ; = 'C' : pas de réordonnancement mais la stratégie "voisin le plus proche" est utilisée ; = 'B' : réordonnés et stratégie "voisin le plus proche" utilisée.
- PMAX - Une borne supérieure pour la norme infinie des sous-matrices élémentaires des transformations individuelles utilisées pour la réduction.
- A_IN - La partie principale N-by-N de ce tableau doit contenir la matrice A à mettre en forme bloc-diagonale, en forme de Schur réelle.
- X_IN - Si JOBX = 'U', la partie principale N-by-N de ce tableau doit contenir la matrice X donnée.
- TOL - La tolérance à utiliser pour l'ordre des blocs diagonaux de la matrice en forme de Schur réelle.

## 📤 Argument de sortie

- A_OUT - La partie principale N-by-N de ce tableau contient la matrice bloc-diagonale calculée, en forme canonique de Schur réelle. Les blocs non diagonaux sont mis à zéro.
- X_OUT - Si JOBX = 'U', la partie principale N-by-N de ce tableau contient le produit de la matrice X donnée et de la matrice de transformation qui a réduit A en forme bloc-diagonale. La matrice de transformation est elle-même un produit de transformations de similarité non orthogonales ayant des éléments de magnitude ≤ PMAX. Si JOBX = 'N', ce tableau n'est pas référencé.
- NBLCKS - Le nombre de blocs diagonaux de la matrice A.
- BLSIZE - Les NBLCKS premiers éléments de ce tableau contiennent les ordres des blocs diagonaux résultants de la matrice A.
- WR - Parties réelles des valeurs propres de la matrice A.
- WI - Parties imaginaires des valeurs propres de la matrice A.
- INFO - = 0 : sortie réussie ;

## 📄 Description

To reduce a matrix A in real Schur form to a block-diagonal form using well-conditioned non-orthogonal similarity transformations. The condition numbers of the transformations used for reduction are roughly bounded by PMAX\*PMAX, where PMAX is a given value. The transformations are optionally postmultiplied in a given matrix X. The real Schur form is optionally ordered, so that clustered eigenvalues are grouped in the same block.

## Fonction(s) utilisée(s)

MB03RD

## 📚 Bibliographie

http://slicot.org/objects/software/shared/doc/MB03RD.html

## 💡 Exemple

```matlab
N = 8;
PMAX = 1.D03;
TOL = 1.D-2;
JOBX = 'U';
SORT = 'S';
A_IN = [1.   -1.    1.    2.    3.    1.    2.    3.;
   1.    1.    3.    4.    2.    3.    4.    2.;
   0.    0.    1.   -1.    1.    5.    4.    1.;
   0.    0.    0.    1.   -1.    3.    1.    2.;
   0.    0.    0.    1.    1.    2.    3.   -1.;
   0.    0.    0.    0.    0.    1.    5.    1.;
   0.    0.    0.    0.    0.    0.    0.99999999   -0.99999999;
   0.    0.    0.    0.    0.    0.    0.99999999    0.99999999];
X_IN = zeros(N, N);
[A_OUT, X_OUT, NBLCKS, BLSIZE, WR, WI, INFO] = slicot_mb03rd(JOBX, SORT, PMAX, A_IN, X_IN, TOL)
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

SLICOT Documentation
