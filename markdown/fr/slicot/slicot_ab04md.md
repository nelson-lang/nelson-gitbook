# slicot_ab04md

Conversion entre systèmes discrets et continus par transformation bilinéaire.

## Syntaxe

- [A_OUT, B_OUT, C_OUT, D_OUT, INFO] = slicot_ab04md(TYPE, ALPHA, BETA, A_IN, B_IN, C_IN, D_IN)

## Argument d'entrée

- TYPE - Un caractère : 'D' discret ou 'C' continu.
- ALPHA, BETA - Paramètres spécifiant la transformation bilinéaire. Valeurs recommandées pour systèmes stables : ALPHA = 1, BETA = 1. ALPHA ≠ 0, BETA ≠ 0.
- A_IN - La partie N-by-N de ce tableau doit contenir la matrice d'état A du système d'origine.
- B_IN - La partie N-by-M de ce tableau doit contenir la matrice d'entrée B du système d'origine.
- C_IN - La partie P-by-N de ce tableau doit contenir la matrice de sortie C du système d'origine.
- D_IN - La partie P-by-M de ce tableau doit contenir la matrice d'entrée/sortie D du système d'origine.

## Argument de sortie

- A_OUT - La partie N-by-N de ce tableau contient la matrice d'état \_A du système transformé.
- B_OUT - La partie N-by-M de ce tableau contient la matrice d'entrée \_B du système transformé.
- C_OUT - La partie principale P-by-N de ce tableau contient la matrice de sortie \_C du système transformé.
- D_OUT - La partie P-by-M de ce tableau contient la matrice d'entrée/sortie \_D du système transformé.
- INFO - Indicateur d'erreur : 0 : sortie réussie ; < 0 : si INFO = -i, le i-ème argument avait une valeur illégale ; 1 : si la matrice (ALPHA*I + A) est exactement singulière ; 2 : si la matrice (BETA*I - A) est exactement singulière.

## Description

<p>Effectuer une transformation sur les paramètres (A, B, C, D) d'un système, équivalente à une transformation bilinéaire de la matrice de fonction de transfert correspondante.</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/AB04MD.html

## Fonction(s) utilisée(s)

AB04MD

## Exemple

```matlab
N = 2;
M = 2;
P = 2;
TYPE= 'C';
ALPHA = 1;
BETA = 1;
A = [   1.0  0.5; 0.5  1.0];
B = [   0.0 -1.0; 1.0  0.0];
C = [  -1.0  0.0; 0.0  1.0];
D = [   1.0  0.0; 0.0 -1.0];
[A_OUT, B_OUT, C_OUT, D_OUT, INFO] = slicot_ab04md(TYPE, ALPHA, BETA, A, B, C, D)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
