# slicot_mb03pd

Détermination du rang d'une matrice par estimation conditionnelle incrémentale (pivotement de lignes).

## Syntaxe

- [A_OUT, JPVT_OUT, TAU, RANK, SVAL, INFO] = slicot_mb03pd(JOBRQ, A_IN, JPVT_IN, RCOND, SVLMAX)

## Argument d'entrée

- JOBRQ - = 'R' : effectuer une factorisation RQ avec pivotement de lignes ; = 'N' : ne pas effectuer la factorisation RQ (mais supposer qu'elle a été faite à l'extérieur).
- A_IN - Si JOBRQ = 'R', la partie principale M-by-N de ce tableau doit contenir la matrice A donnée.
- JPVT_IN - Si JOBRQ = 'R', si JPVT(i) != 0, la i-ème ligne de A est une ligne finale, sinon c'est une ligne libre. Avant la factorisation RQ de A, toutes les lignes finales sont permutées vers les positions finales ; seules les lignes libres restantes sont déplacées lors du pivotement de lignes pendant la factorisation. Pour la détermination du rang, il est préférable que toutes les lignes soient libres.
- RCOND - RCOND est utilisé pour déterminer le rang effectif de A, défini comme l'ordre de la plus grande sous-matrice triangulaire terminale R22 dans la factorisation RQ avec pivotement de A, dont le nombre condition estimé est inférieur à 1/RCOND.
- SVLMAX - Si A est une sous-matrice d'une autre matrice B, et que la décision de rang doit être liée à cette matrice, SVLMAX doit être une estimation de la plus grande valeur singulière de B (par exemple la norme de Frobenius de B). Sinon, la valeur d'entrée SVLMAX = 0 devrait convenir.

## Argument de sortie

- A_OUT - Si JOBRQ = 'R', si M ≤ N, le triangle supérieur de la sous-matrice A(1:M,N-M+1:N) contient la matrice triangulaire supérieure M-by-M R ;
- JPVT_OUT - Si JOBRQ = 'R', si JPVT(i) = k, alors la i-ème ligne de P\*A était la k-ème ligne de A.
- TAU - Si JOBRQ = 'R', les min(M,N) premiers éléments de TAU contiennent les facteurs scalaires des réflecteurs élémentaires.
- RANK - Le rang effectif (estimé) de A, c.-à-d. l'ordre de la sous-matrice R22.
- SVAL - Les estimations de certaines valeurs singulières du facteur triangulaire R.
- INFO - = 0 : sortie réussie

## Description

<p>Calculer (éventuellement) une factorisation RQ révélatrice de rang d'une matrice réelle générale M-by-N A, éventuellement déficiente en rang, et estimer son rang effectif en utilisant l'estimation conditionnelle incrémentale.</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/MB03PD.html

## Fonction(s) utilisée(s)

MB03PD

## Exemple

```matlab
M = 6;
N = 5;
JOBRQ = 'R';
RCOND = 5.D-16;
SVLMAX = 0.0;
JPVT_IN = zeros(1, M);
A_IN = [   1.    2.    6.    3.    5.;
  -2.   -1.   -1.    0.   -2.;
   5.    5.    1.    5.    1.;
  -2.   -1.   -1.    0.   -2.;
   4.    8.    4.   20.    4.;
  -2.   -1.   -1.    0.   -2.];
[A_OUT, JPVT_OUT, TAU, RANK, SVAL, INFO] = slicot_mb03pd(JOBRQ, A_IN, JPVT_IN, RCOND, SVLMAX)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
