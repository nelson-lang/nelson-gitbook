# slicot_tb01id

Équilibrage d'une matrice système correspondant au triplet (A, B, C).

## Syntaxe

- [MAXRED_OUT, A_OUT, B_OUT, C_OUT, SCALE, INFO] = slicot_tb01id(JOB, MAXRED_IN, A_IN, B_IN, C_IN)

## Argument d'entrée

- JOB - = 'A': Toutes les matrices sont impliquées dans l'équilibrage ; = 'B': Les matrices B et A sont impliquées ; = 'C': Les matrices C et A sont impliquées ; = 'N': Les matrices B et C ne sont pas impliquées dans l'équilibrage.
- MAXRED_IN - la réduction maximale autorisée de la norme 1 de S (dans une itération) si des lignes ou colonnes nulles sont rencontrées.
- A_IN - La partie principale N-by-N de ce tableau doit contenir la matrice d'état du système A.
- B_IN - La partie principale N-by-M de ce tableau doit contenir la matrice d'entrée du système B.
- C_IN - La partie principale P-by-N de ce tableau doit contenir la matrice de sortie du système C.

## Argument de sortie

- MAXRED_OUT - si la norme 1 de la matrice donnée S est non nulle, le ratio entre la norme 1 de la matrice donnée et la norme 1 de la matrice équilibrée.
- A_OUT - La partie principale N-by-N de ce tableau contient la matrice équilibrée inv(D)*A*D.
- B_OUT - La partie principale N-by-M de ce tableau contient la matrice équilibrée inv(D)\*B.
- C_OUT - La partie principale P-by-N de ce tableau contient la matrice équilibrée C\*D.
- SCALE - Les facteurs d'échelle appliqués à S.
- INFO - = 0 : sortie réussie.

## Description

<p>Réduire la norme 1 d'une matrice système correspondant au triplet (A, B, C), par équilibrage.</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/TB01ID.html

## Fonction(s) utilisée(s)

TB01ID

## Exemple

```matlab
N = 5;
M = 2;
P = 5;
JOB = 'A';
MAXRED_IN = 0.0;

A_IN = [0.0  1.0000e+000          0.0          0.0          0.0;
 -1.5800e+006 -1.2570e+003          0.0          0.0          0.0;
  3.5410e+014          0.0 -1.4340e+003          0.0 -5.3300e+011;
          0.0          0.0          0.0          0.0  1.0000e+000;
          0.0          0.0          0.0 -1.8630e+004 -1.4820e+000];

B_IN = [0.0          0.0;
  1.1030e+002          0.0;
          0.0          0.0;
          0.0          0.0;
          0.0  8.3330e-003];

C_IN = [1.0000e+000          0.0          0.0          0.0          0.0;
          0.0          0.0  1.0000e+000          0.0          0.0;
          0.0          0.0          0.0  1.0000e+000          0.0;
  6.6640e-001          0.0 -6.2000e-013          0.0          0.0;
          0.0          0.0 -1.0000e-003  1.8960e+006  1.5080e+002];
[MAXRED_OUT, A_OUT, B_OUT, C_OUT, SCALE, INFO] = slicot_tb01id(JOB, MAXRED_IN, A_IN, B_IN, C_IN)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
