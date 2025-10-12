# slicot_ag08bd

Zéros et structure de Kronecker d'un pencil de système descripteur.

## Syntaxe

- [A_OUT, E_OUT, NFZ, NRANK, NIZ, DINFZ, NKROR, NINFE, NKROL, INFZ, KRONR, INFE, KRONL, INFO] = slicot_ag08bd(EQUIL, M, P, A_IN, E_IN, B, C, D, TOL)

## Argument d'entrée

- EQUIL - = 'S' : effectuer un équilibrage (mise à l'échelle) ; = 'N' : ne pas effectuer d'équilibrage.
- M - Le nombre de colonnes de la matrice B.
- P - Le nombre de lignes de la matrice C.
- A_IN - La partie principale L-by-N de ce tableau doit contenir la matrice de dynamique d'état A du système.
- E_IN - La partie principale L-by-N de ce tableau doit contenir la matrice descripteur E du système.
- B - La partie principale L-by-M de ce tableau doit contenir la matrice d'entrée/état B du système.
- C - La partie principale P-by-N de ce tableau doit contenir la matrice état/sortie C du système.
- D - La partie principale P-by-M de ce tableau doit contenir la matrice de transmission directe D du système.
- TOL - Une tolérance utilisée dans les décisions de rang pour déterminer le rang effectif, défini comme l'ordre de la plus grande sous-matrice triangulaire principale (ou terminale) dans la factorisation QR (ou RQ) avec permutation de colonnes (ou lignes) dont le nombre condition estimé est inférieur à 1/TOL.

## Argument de sortie

- A_OUT - La partie principale NFZ-by-NFZ de ce tableau contient la matrice Af du pencil réduit.
- E_OUT - La partie principale NFZ-by-NFZ de ce tableau contient la matrice Ef du pencil réduit.
- NFZ - Le nombre de zéros finis.
- NRANK - Le rang normal du pencil du système.
- NIZ - Le nombre de zéros infinis.
- DINFZ - La multiplicité maximale des zéros de Smith infinis.
- NKROR - Le nombre d'indices de Kronecker droits.
- NINFE - Le nombre de blocs élémentaires infinis.
- NKROL - Le nombre d'indices de Kronecker gauches.
- INFZ - Les DINFZ premiers éléments de INFZ contiennent des informations sur les diviseurs élémentaires infinis.
- KRONR - Les NKROR premiers éléments de ce tableau contiennent les indices de Kronecker droits (colonnes).
- KRONL - Les NKROL premiers éléments de ce tableau contiennent les indices de Kronecker gauches (lignes).
- INFO - = 0 : sortie réussie ;

## Description

<p> To extract from the system pencil a regular pencil Af-lambda*Ef which has the finite Smith zeros of S(lambda) as generalized eigenvalues. The routine also computes the orders of the infinite Smith zeros and determines the singular and infinite Kronecker structure of system pencil, i.e., the right and left Kronecker indices, and the multiplicities of infinite eigenvalues.</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/AG08BD.html

## Fonction(s) utilisée(s)

AG08BD

## Exemple

```matlab
L = 9;
N = 9;
M = 3;
P = 3;
TOL= 1.e-7;
EQUIL='N';
A_IN = [1     0     0     0     0     0     0     0     0;
     0     1     0     0     0     0     0     0     0;
     0     0     1     0     0     0     0     0     0;
     0     0     0     1     0     0     0     0     0;
     0     0     0     0     1     0     0     0     0;
     0     0     0     0     0     1     0     0     0;
     0     0     0     0     0     0     1     0     0;
     0     0     0     0     0     0     0     1     0;
     0     0     0     0     0     0     0     0     1];

E_IN = [0     0     0     0     0     0     0     0     0;
     1     0     0     0     0     0     0     0     0;
     0     1     0     0     0     0     0     0     0;
     0     0     0     0     0     0     0     0     0;
     0     0     0     1     0     0     0     0     0;
     0     0     0     0     1     0     0     0     0;
     0     0     0     0     0     0     0     0     0;
     0     0     0     0     0     0     1     0     0;
     0     0     0     0     0     0     0     1     0];

B =[-1     0     0;
     0     0     0;
     0     0     0;
     0    -1     0;
     0     0     0;
     0     0     0;
     0     0    -1;
     0     0     0;
     0     0     0];

C = [ 0     1     1     0     3     4     0     0     2;
      0     1     0     0     4     0     0     2     0;
      0     0     1     0    -1     4     0    -2     2];

D = [ 1     2    -2;
      0    -1    -2;
      0     0     0];
%=============================================================================
% default call for the fortran routine
M = 3; P = 3;
[A_OUT, E_OUT, NFZ, NRANK, NIZ, DINFZ, NKROR, NINFE, NKROL, INFZ, KRONR, INFE, KRONL, INFO] = slicot_ag08bd(EQUIL, M, P, A_IN, E_IN, B, C, D, TOL)
%=============================================================================
% Compute poles (we need tp call fortran routine with M = 0, P = 0)
M = 0; P = 0;
[A_OUT, E_OUT, NFZ, NRANK, NIZ, DINFZ, NKROR, NINFE, NKROL, INFZ, KRONR, INFE, KRONL, INFO] = slicot_ag08bd(EQUIL, M, P, A_IN, E_IN, B, C, D, TOL)
%=============================================================================
%  Check the observability and compute the ordered set of the observability indices (call the routine with M = 0).
M = 0; P = 3;
[A_OUT, E_OUT, NFZ, NRANK, NIZ, DINFZ, NKROR, NINFE, NKROL, INFZ, KRONR, INFE, KRONL, INFO] = slicot_ag08bd(EQUIL, M, P, A_IN, E_IN, B, C, D, TOL)
%=============================================================================
% Check the controllability and compute the ordered set of the controllability indices (call the routine with P = 0)
M = 3; P = 0;
[A_OUT, E_OUT, NFZ, NRANK, NIZ, DINFZ, NKROR, NINFE, NKROL, INFZ, KRONR, INFE, KRONL, INFO] = slicot_ag08bd(EQUIL, M, P, A_IN, E_IN, B, C, D, TOL)
%=============================================================================



```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
