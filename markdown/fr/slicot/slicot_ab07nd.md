# slicot_ab07nd

Inverse d'un système linéaire donné.

## Syntaxe

- [A_OUT, B_OUT, C_OUT, D_OUT, RCOND, INFO] = slicot_ab07nd(A_IN, B_IN, C_IN, D_IN)

## Argument d'entrée

- A_IN - La partie principale N-by-N de ce tableau doit contenir la matrice d'état A du système original.
- B_IN - La partie principale N-by-M de ce tableau doit contenir la matrice d'entrée B du système original.
- C_IN - La partie principale M-by-N de ce tableau doit contenir la matrice de sortie C du système original.
- D_IN - La partie principale M-by-M de ce tableau doit contenir la matrice de transmission directe D du système original.

## Argument de sortie

- A_OUT - La partie principale N-by-N de ce tableau contient la matrice d'état Ai du système inverse.
- B_OUT - La partie principale N-by-M de ce tableau contient la matrice d'entrée Bi du système inverse.
- C_OUT - La partie principale M-by-N de ce tableau contient la matrice de sortie Ci du système inverse.
- D_OUT - La partie principale M-by-M de ce tableau contient la matrice de transmission directe Di du système inverse.
- RCOND - Le nombre conditionnel réciproque estimé de la matrice de transmission directe D du système original.
- INFO - = 0 : sortie réussie ;

## Description

<p>To compute the inverse (Ai, Bi, Ci, Di) of a given system (A, B, C, D).</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/AB07ND.html

## Fonction(s) utilisée(s)

AB07ND

## Exemple

```matlab
A_IN = [1.0   2.0   0.0;
   4.0  -1.0   0.0;
   0.0   0.0   1.0];

B_IN = [1.0   0.0;
   0.0   1.0;
   1.0   0.0];

C_IN = [0.0   1.0  -1.0;
   0.0   0.0   1.0];

D_IN = [4.0   0.0;
   0.0   1.0];

[A_OUT, B_OUT, C_OUT, D_OUT, RCOND, INFO] = slicot_ab07nd(A_IN, B_IN, C_IN, D_IN)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
