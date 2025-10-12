# slicot_sb02od

Résolution des équations de Riccati algébriques temps continu ou discret (méthode des vecteurs de Schur généralisés).

## Syntaxe

- [RCOND, X, ALFAR, ALFAI, BETA, S, T, U, INFO] = slicot_sb02od(DICO, JOBB, FACT, UPLO, JOBL, SORT, P, A, B, Q, R, L, TOL)

## Argument d'entrée

- DICO - Spécifie le type d'équation de Riccati à résoudre : = 'C' : cas continu ; = 'D' : cas discret.
- JOBB - Spécifie si la matrice G est fournie au lieu des matrices B et R : = 'B' : B et R sont fournis ; = 'G' : G est fourni.
- FACT - Spécifie si les matrices Q et/ou R (si JOBB = 'B') sont factorisées : = 'N' : non factorisées (Q et R fournis) ; = 'C' : C donné, Q = C'C ; = 'D' : D donné, R = D'D ; = 'B' : facteurs C et D donnés, Q = C'C, R = D'D.
- UPLO - Si JOBB = 'G' ou FACT = 'N', spécifie quel triangle des matrices G et Q (si FACT = 'N') ou Q et R (si JOBB = 'B') est stocké : = 'U' : triangle supérieur ; = 'L' : triangle inférieur.
- JOBL - Spécifie si la matrice L est nulle : = 'Z' : L est nulle ; = 'N' : L est non nulle. JOBL n'est pas utilisé si JOBB = 'G' (on suppose JOBL = 'Z'). La routine SB02MT doit être appelée juste avant SB02OD pour obtenir les résultats lorsque JOBB = 'G' et JOBL = 'N'.
- SORT - Spécifie quelles valeurs propres doivent apparaître en tête de la forme de Schur généralisée : = 'S' : valeurs propres stables en premier ; = 'U' : valeurs propres instables en premier.
- P - Le nombre de sorties du système. Si FACT = 'C' ou 'D' ou 'B', P est le nombre de lignes des matrices C et/ou D. P >= 0. Sinon, P n'est pas utilisé.
- A - La partie principale N-by-N de ce tableau doit contenir la matrice d'état A du système.
- B - Si JOBB = 'B', la partie principale N-by-M de ce tableau doit contenir la matrice d'entrée B du système.
- Q - Si FACT = 'N' ou 'D', la partie principale N-by-N triangulaire supérieure (si UPLO = 'U') ou triangulaire inférieure (si UPLO = 'L') doit contenir la partie triangulaire supérieure ou inférieure, respectivement, de la matrice symétrique de pondération d'état Q. La partie strictement inférieure (si UPLO = 'U') ou strictement supérieure (si UPLO = 'L') n'est pas référencée.
- R - Si FACT = 'N' ou 'C', la partie principale M-by-M triangulaire supérieure (si UPLO = 'U') ou triangulaire inférieure (si UPLO = 'L') doit contenir la partie triangulaire correspondante de la matrice symétrique de pondération d'entrée R. La partie strictement inférieure (si UPLO = 'U') ou strictement supérieure (si UPLO = 'L') n'est pas référencée.
- L - Si JOBL = 'N' (et JOBB = 'B'), la partie principale N-by-M de ce tableau doit contenir la matrice de pondération croisée L. Cette partie est modifiée en interne, mais restaurée à la sortie. Si JOBL = 'Z' ou JOBB = 'G', ce tableau n'est pas référencé.
- TOL - La tolérance à utiliser pour tester la quasi-singularité du pencil matriciel original, spécifiquement du facteur triangulaire obtenu lors du processus de réduction.

## Argument de sortie

- RCOND - Une estimation du réciproque du nombre de condition (en norme 1) du système d'ordre N d'équations algébriques à partir duquel la matrice solution X est obtenue.
- X - La partie principale N-by-N de ce tableau contient la matrice solution X du problème.
- ALFAR, ALFAI, BETA - Les valeurs propres généralisées de la paire de matrices 2N-by-2N, ordonnées comme spécifié par SORT (si INFO = 0).
- S - La partie principale 2N-by-2N de ce tableau contient la forme de Schur réelle ordonnée S de la première matrice du pencil réduit associé au problème optimal, ou de la matrice hamiltonienne correspondante si DICO = 'C' et JOBB = 'G'.
- T - Si DICO = 'D' ou JOBB = 'B', la partie principale 2N-by-2N contient la forme triangulaire supérieure ordonnée T de la seconde matrice du pencil réduit associé au problème optimal.
- U - La partie principale 2N-by-2N de ce tableau contient la matrice de transformation droite U qui réduit le pencil 2N-by-2N à la forme de Schur généralisée ordonnée (S,T), ou la matrice hamiltonienne à la forme de Schur réelle ordonnée S si DICO = 'C' et JOBB = 'G'.
- INFO - = 0 : sortie réussie ;

## Description

<p>Résolution des équations de Riccati algébriques temps continu ou discret (méthode des vecteurs de Schur généralisés).</p>

<p>La routine utilise la méthode des sous-espaces déflants, basée sur le réordonnancement des valeurs propres dans une paire de matrices de Schur généralisée.</p>

<p>Un problème propre standard est résolu dans le cas continu si G est fourni.</p>

## Bibliographie

http://slicot.org/objects/software/shared/doc/SB02OD.html

## Fonction(s) utilisée(s)

SB02OD

## Exemple

```matlab
N = 2;
M = 1;
P = 3;
TOL = 0.0;
DICO = 'C';
JOBB = 'B';
FACT = 'B';
UPLO = 'U';
JOBL = 'Z';
SORT = 'S';
A = [0.0  1.0;
   0.0  0.0];
B = [0.0; 1.0];
Q = [1.0  0.0;
   0.0  1.0;
   0.0  0.0];
R = [0.0;
   0.0;
   1.0];
L = zeros(N, M);
[RCOND, X, ALFAR, ALFAI, BETA, S, T, U, INFO] = slicot_sb02od(DICO, JOBB, FACT, UPLO, JOBL, SORT, P, A, B, Q, R, L, TOL)
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

SLICOT Documentation
