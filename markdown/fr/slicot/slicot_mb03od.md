# slicot_mb03od

Détermination du rang d'une matrice par estimation conditionnelle incrémentale.

## Syntaxe

- [A_OUT, JPVT_OUT, TAU, RANK, SVAL, INFO] = slicot_mb03od(JOBQR, A_IN, JPVT_IN, RCOND, SVLMAX)

## Argument d'entrée

- JOBQR - = 'Q' : effectuer une factorisation QR avec permutation de colonnes ; = 'N' : ne pas effectuer la factorisation QR (mais supposer qu'elle a été faite à l'extérieur).
- A_IN - Si JOBQR = 'Q', la partie principale M-by-N de ce tableau doit contenir la matrice A donnée.
- JPVT_IN - Si JOBQR = 'Q', si JPVT(i) != 0, la i-ème colonne de A est une colonne initiale, sinon c'est une colonne libre. Avant la factorisation QR de A, toutes les colonnes initiales sont permutées en positions principales ; seules les colonnes libres restantes sont déplacées lors du pivotement de colonnes pendant la factorisation. Pour la détermination du rang, il est préférable que toutes les colonnes soient libres.
- RCOND - RCOND est utilisé pour déterminer le rang effectif de A, défini comme l'ordre de la plus grande sous-matrice triangulaire principale R11 dans la factorisation QR avec pivot de A, dont le nombre condition estimé est inférieur à 1/RCOND.
- SVLMAX - Si A est une sous-matrice d'une autre matrice B, et que la décision de rang doit être liée à cette matrice, SVLMAX doit être une estimation de la plus grande valeur singulière de B.

## Argument de sortie

- A_OUT - Si JOBQR = 'Q', la partie triangulaire supérieure principale de A (min(M,N)-by-N) contient le facteur triangulaire R, et les éléments sous la diagonale, avec le tableau TAU, représentent la matrice orthogonale Q comme produit de min(M,N) réflecteurs élémentaires.
- JPVT_OUT - Si JOBQR = 'Q', si JPVT(i) = k, alors la i-ème colonne de A\*P était la k-ème colonne de A.
- TAU - Si JOBQR = 'Q', les min(M,N) premiers éléments de TAU contiennent les facteurs scalaires des réflecteurs élémentaires.
- RANK - Le rang effectif (estimé) de A, c.-à-d. l'ordre de la sous-matrice R11.
- SVAL - Les estimations de certaines valeurs singulières du facteur triangulaire R.
- INFO - = 0 : sortie réussie

## Description

<p>Calculer (éventuellement) une factorisation QR révélatrice de rang d'une matrice réelle M-by-N générale A, éventuellement de rang déficient, et estimer son rang effectif en utilisant l'estimation conditionnelle incrémentale.</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/MB03OD.html

## Fonction(s) utilisée(s)

MB03OD

## Exemple

```matlab
M = 6;
N = 5;
JOBQR = 'Q';
RCOND = 5.D-16;
SVLMAX = 0.0;
JPVT_IN = zeros(1, N);
A_IN = [1.    2.    6.    3.    5.;
  -2.   -1.   -1.    0.   -2.;
   5.    5.    1.    5.    1.;
  -2.   -1.   -1.    0.   -2.;
   4.    8.    4.   20.    4.;
  -2.   -1.   -1.    0.   -2.];

[A_OUT, JPVT_OUT, TAU, RANK, SVAL, INFO] = slicot_mb03od(JOBQR, A_IN, JPVT_IN, RCOND, SVLMAX)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
