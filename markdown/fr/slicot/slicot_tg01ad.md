# slicot_tg01ad

Équilibrage des matrices du pinceau système correspondant au triplet descripteur (A - λ E, B, C).

## Syntaxe

- [A_OUT, E_OUT, B_OUT, C_OUT, LSCALE, RSCALE, INFO] = slicot_tg01ad(JOB, THRESH, A_IN, E_IN, B_IN, C_IN)

## Argument d'entrée

- JOB - = 'A': Toutes les matrices sont impliquées dans l'équilibrage ; = 'B': Les matrices B, A et E sont impliquées ; = 'C': Les matrices C, A et E sont impliquées ; = 'N': Les matrices B et C ne sont pas impliquées dans l'équilibrage.
- THRESH - Valeur seuil pour la magnitude des éléments : les éléments de magnitude inférieure ou égale à THRESH sont ignorés pour l'équilibrage.
- A_IN - La partie principale L-by-N de ce tableau doit contenir la matrice de dynamique d'état A.
- E_IN - La partie principale L-by-N de ce tableau doit contenir la matrice descripteur E.
- B_IN - La partie principale L-by-M de ce tableau doit contenir la matrice entrée/état B.
- C_IN - La partie principale P-by-N de ce tableau doit contenir la matrice état/sortie C.

## Argument de sortie

- A_OUT - La partie principale L-by-N de ce tableau contient la matrice équilibrée Dl*A*Dr.
- E_OUT - La partie principale L-by-N de ce tableau contient la matrice équilibrée Dl*E*Dr.
- B_OUT - La partie principale L-by-M de ce tableau contient la matrice équilibrée Dl\*B.
- C_OUT - La partie principale P-by-N de ce tableau contient la matrice équilibrée C\*Dr.
- LSCALE - Les facteurs d'échelle appliqués à S par la gauche.
- RSCALE - Les facteurs d'échelle appliqués à S par la droite.
- INFO - = 0 : sortie réussie.

## Description

<p>Équilibrer les matrices du pinceau du système correspondant au triplet descripteur (A - λ E, B, C).</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/TG01AD.html

## Fonction(s) utilisée(s)

TG01AD

## Exemple

```matlab
L = 4;
N = 4;
M = 2;
P = 2;
JOB = 'A';
THRESH = 0;

A_IN = [ -1         0         0    0.003;
         0         0    0.1000    0.02;
       100        10         0    0.4;
         0         0         0    0.0];

E_IN = [1       0.2         0    0.0;
         0         1         0    0.01;
       300        90         6    0.3;
         0         0        20    0.0];

B_IN = [10         0;
         0         0;
         0      1000;
     10000     10000];

C_IN = [-0.1      0.0    0.001    0.0;
       0.0      0.01  -0.001    0.0001];

[A_OUT, E_OUT, B_OUT, C_OUT, LSCALE, RSCALE, INFO] = slicot_tg01ad(JOB, THRESH, A_IN, E_IN, B_IN, C_IN)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
