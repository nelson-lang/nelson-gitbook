# slicot_ab01od

Forme en escalier pour systèmes multi-entrées utilisant des transformations orthogonales d'état et d'entrée.

## Syntaxe

- [A_OUT, B_OUT, U_OUT, V, NCONT_OUT, INDCON_OUT, KSTAIR_OUT, INFO] = slicot_ab01od(STAGES, JOBU, JOBV, A_IN, B_IN, U_IN, NCONT_IN, INDCON_IN, KSTAIR_IN, TOL)

## Argument d'entrée

- STAGES - Spécifie l'étape de réduction : 'F' : effectuer uniquement l'étape avant ; 'B' : effectuer uniquement l'étape arrière ; 'A' : effectuer les deux étapes.
- JOBU - Indique si l'utilisateur souhaite accumuler dans une matrice U les transformations d'espace d'état : 'N' : ne pas former U ; 'I' : U est initialisée en interne à la matrice identité.
- JOBV - Indique si l'utilisateur souhaite accumuler dans une matrice V les transformations de l'espace d'entrée : 'N' : ne pas former V ; 'I' : V est initialisée à la matrice identité et la matrice de transformation orthogonale V est retournée.
- A_IN - La partie principale N-by-N de ce tableau doit contenir la matrice de transition d'état A à transformer.
- B_IN - La partie principale N-by-M de ce tableau doit contenir la matrice d'entrée B à transformer.
- U_IN - Si STAGES ≠ 'B' ou JOBU = 'N', U n'a pas besoin d'être fournie à l'entrée. Si STAGES = 'B' et JOBU = 'I', alors à l'entrée, la partie principale N-by-N de ce tableau doit contenir la matrice de transformation U qui a réduit la paire à la forme canonique orthogonale.
- NCONT_IN - L'ordre de la représentation d'espace d'état controllable. NCONT_IN est en entrée uniquement si STAGES = 'B'.
- INDCON_IN - Le nombre de marches dans la forme en escalier (aussi l'indice de contrôlabilité de la partie contrôlable de la représentation du système).
- TOL - La tolérance utilisée pour la détermination du rang lors de la transformation (A, B).

## Argument de sortie

- A*OUT - À la sortie, la partie principale N-by-N de ce tableau contient la matrice de transition d'état transformée U' * A _ U. La partie principale NCONT-by-NCONT contient la matrice d'état Acont en forme de Hessenberg par blocs, donnée par U' _ A \_ U, d'une réalisation contrôlable du système original. Les éléments sous la première sous-diagonale par blocs sont mis à zéro. Si STAGES ≠ 'F', les blocs sous-diagonaux de A sont triangulés par factorisation RQ et les éléments annulés sont explicitement mis à zéro.
- B*OUT - À la sortie, si STAGES = 'F', la partie principale N-by-M de ce tableau contient la matrice d'entrée transformée U' * B, avec tous les éléments sauf le premier bloc mis à zéro. Si STAGES ≠ 'F', la partie principale N-by-M contient la matrice transformée U' \_ B \* V, avec tous les éléments sauf le premier bloc mis à zéro et le premier bloc en forme triangulaire supérieure.
- U_OUT - Si JOBU = 'I', la partie principale N-by-N de ce tableau contient la matrice de transformation U qui a effectué la réduction spécifiée. Si JOBU = 'N', le tableau U n'est pas référencé et peut être fourni comme tableau factice.
- V - Si JOBV = 'I', la partie principale M-by-M de ce tableau contient la matrice de transformation V.
- NCONT_OUT - NCONT_OUT est en entrée uniquement si STAGES = 'B'.
- INDCON_OUT - INDCON est en entrée uniquement si STAGES = 'B'.
- KSTAIR_OUT - KSTAIR est en entrée si STAGES = 'B', et en sortie sinon.
- INFO - 0 : sortie réussie ; si INFO = -i, le i-ème argument avait une valeur illégale.

## Description

<p>Réduire les matrices A et B en utilisant (et en accumulant éventuellement) les transformations d'espace d'état et d'entrée U et V respectivement, telles que la paire de matrices</p>

<p>Ac = U' * A * U,    Bc = U' * B * V</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/AB01OD.html

## Fonction(s) utilisée(s)

AB01OD

## Exemple

```matlab
N = 5;
M = 2;
TOL = 0.
STAGES = 'F';
JOBU = 'N';
JOBV = 'N';
A_IN = [17.0   24.0    1.0    8.0   15.0;
   23.0    5.0    7.0   14.0   16.0;
   4.0    6.0   13.0   20.0   22.0;
   10.0   12.0   19.0   21.0    3.0;
   11.0   18.0   25.0    2.0    9.0];

% SLICOT 5.0 have an error in the example.
A_IN = A_IN.';

B_IN = [   -1.0   -4.0;
    4.0    9.0;
   -9.0  -16.0;
   16.0   25.0;
  -25.0  -36.0];

U_IN = zeros(N, N);
INDCON_IN = N;
NCONT_IN = 1;
KSTAIR_IN = zeros(1,N);
[A_OUT, B_OUT, U_OUT, V, NCONT_OUT, INDCON_OUT, KSTAIR_OUT, INFO] = slicot_ab01od(STAGES, JOBU, JOBV, A_IN, B_IN, U_IN, NCONT_IN, INDCON_IN, KSTAIR_IN, TOL)

```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
