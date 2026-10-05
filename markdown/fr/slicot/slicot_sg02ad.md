# slicot\_sg02ad

Résolution des équations de Riccati algébriques temps continu ou discret pour les systèmes descripteurs.

## 📝 Syntaxe

- [RCONDU, X, ALFAR, ALFAI, BETA, S, T, U, IWARN, INFO] = slicot\_sg02ad(DICO, JOBB, FACT, UPLO, JOBL, SCAL, SORT, ACC, P, A, E, B, Q, R, L, TOL)

## 📥 Argument d'entrée

- DICO - Spécifie le type d'équation de Riccati à résoudre : = 'C' : équation (1), cas continu ; = 'D' : équation (2), cas discret.
- JOBB - Spécifie si la matrice G est fournie au lieu des matrices B et R : = 'B' : B et R sont fournis ; = 'G' : G est fourni.
- FACT - Spécifie si les matrices Q et/ou R (si JOBB = 'B') sont factorisées : = 'N' : non factorisées, Q et R fournis ; = 'C' : C donné, Q = C'C ; = 'D' : D donné, R = D'D ; = 'B' : facteurs C et D donnés, Q = C'C, R = D'D.
- UPLO - Si JOBB = 'G' ou FACT = 'N', spécifie quel triangle des matrices G, ou Q et R, est stocké : = 'U' : triangle supérieur stocké ; = 'L' : triangle inférieur stocké.
- JOBL - Spécifie si la matrice L est nulle : = 'Z' : L est nulle ; = 'N' : L est non nulle. JOBL n'est pas utilisé si JOBB = 'G' (on suppose JOBL = 'Z'). La routine SB02MT de la bibliothèque SLICOT doit être appelée juste avant SG02AD pour obtenir les résultats lorsque JOBB = 'G' et JOBL = 'N'.
- SCAL - Si JOBB = 'B', spécifie si une stratégie de mise à l'échelle doit être utilisée pour mettre à l'échelle Q, R et L : = 'G' : mise à l'échelle générale ; = 'N' : aucune mise à l'échelle. SCAL n'est pas utilisé si JOBB = 'G'.
- SORT - Spécifie quelles valeurs propres doivent apparaître en tête de la forme de Schur généralisée : = 'S' : valeurs propres stables en premier ; = 'U' : valeurs propres instables en premier.
- ACC - Spécifie si un raffinement itératif doit être utilisé pour résoudre le système d'équations algébriques donnant la matrice solution X : = 'R' : utiliser le raffinement itératif ; = 'N' : ne pas utiliser le raffinement itératif.
- P - Le nombre de sorties du système. Si FACT = 'C' ou 'D' ou 'B', P est le nombre de lignes des matrices C et/ou D.
- A - La partie principale N-by-N de ce tableau doit contenir la matrice d'état A du système descripteur.
- E - La partie principale N-by-N de ce tableau doit contenir la matrice E du système descripteur.
- B - Si JOBB = 'B', la partie principale N-by-M de ce tableau doit contenir la matrice d'entrée B du système.
- Q - Si FACT = 'N' ou 'D', la partie principale N-by-N triangulaire supérieure (si UPLO = 'U') ou triangulaire inférieure (si UPLO = 'L') de ce tableau doit contenir la partie triangulaire supérieure ou inférieure, respectivement, de la matrice symétrique de pondération d'état Q. La partie strictement inférieure (si UPLO = 'U') ou strictement supérieure (si UPLO = 'L') n'est pas référencée. Si FACT = 'C' ou 'B', la partie principale P-by-N de ce tableau doit contenir la matrice de sortie C du système. Si JOBB = 'B' et SCAL = 'G', alors Q est modifié en interne, mais restauré à la sortie.
- R - Si FACT = 'N' ou 'C', la partie principale M-by-M triangulaire supérieure (si UPLO = 'U') ou triangulaire inférieure (si UPLO = 'L') de ce tableau doit contenir la partie triangulaire supérieure ou inférieure, respectivement, de la matrice symétrique de pondération d'entrée R. La partie strictement inférieure (si UPLO = 'U') ou strictement supérieure (si UPLO = 'L') n'est pas référencée. Si FACT = 'D' ou 'B', la partie principale P-by-M de ce tableau doit contenir la matrice de transmission directe D du système. Si JOBB = 'B' et SCAL = 'G', alors R est modifié en interne, mais restauré à la sortie.
- L - Si JOBL = 'N' et JOBB = 'B', la partie principale N-by-M de ce tableau doit contenir la matrice de pondération croisée L. Si JOBB = 'B' et SCAL = 'G', alors L est modifié en interne, mais restauré à la sortie.
- TOL - La tolérance à utiliser pour tester la quasi-singularité du pencil matriciel original, spécifiquement du facteur triangulaire M-by-M obtenu lors du processus de réduction.

## 📤 Argument de sortie

- RCONDU - Si N > 0 et INFO = 0 ou INFO = 7, une estimation du réciproque du nombre de condition (en norme 1) du système d'ordre N d'équations algébriques à partir duquel la matrice solution X est obtenue.
- X - Si INFO = 0, la partie principale N-by-N de ce tableau contient la matrice solution X du problème.
- ALFAR - Les valeurs propres généralisées de la paire de matrices 2N-by-2N, ordonnées comme spécifié par SORT (si INFO = 0 ou INFO >= 5).
- ALFAI - Les valeurs propres généralisées de la paire de matrices 2N-by-2N, ordonnées comme spécifié par SORT (si INFO = 0 ou INFO >= 5).
- BETA - Les valeurs propres généralisées de la paire de matrices 2N-by-2N, ordonnées comme spécifié par SORT (si INFO = 0 ou INFO >= 5).
- S - La partie principale 2N-by-2N de ce tableau contient la forme de Schur réelle ordonnée S de la première matrice du pencil réduit associé au problème optimal, correspondant aux Q, R et L mis à l'échelle si JOBB = 'B' et SCAL = 'G'.
- T - La partie principale 2N-by-2N de ce tableau contient la forme triangulaire supérieure ordonnée T de la seconde matrice du pencil réduit associé au problème optimal, correspondant aux Q, R et L mis à l'échelle si JOBB = 'B' et SCAL = 'G'.
- U - La partie principale 2N-by-2N de ce tableau contient la matrice de transformation droite U qui réduit le pencil 2N-by-2N à la forme de Schur réelle généralisée ordonnée (S,T).
- IWARN - = 0 : aucun avertissement ; = 1 : la solution calculée peut être imprécise en raison d'une mauvaise mise à l'échelle ou de valeurs propres trop proches de la frontière du domaine de stabilité (l'axe imaginaire si DICO = 'C', ou le cercle unité si DICO = 'D').
- INFO - = 0 : sortie réussie ; = 1 : si le pencil matriciel étendu calculé est singulier, éventuellement en raison d'erreurs d'arrondi ; = 2 : si l'algorithme QZ a échoué ; = 3 : si le réordonnancement des valeurs propres généralisées a échoué ; = 4 : si, après réordonnancement, les erreurs d'arrondi ont modifié les valeurs de certaines valeurs propres complexes de sorte que les valeurs propres de tête de la forme de Schur généralisée ne satisfont plus la condition de stabilité ; cela peut aussi être dû à la mise à l'échelle ; = 5 : si la dimension calculée de la solution n'est pas égale à N ; = 6 : si le spectre est trop proche de la frontière du domaine de stabilité ; = 7 : si une matrice singulière a été rencontrée lors du calcul de la matrice solution X.

## 📄 Description


Résolution en X de l'équation de Riccati algébrique temps continu ou de l'équation de Riccati algébrique temps discret.

## Fonction(s) utilisée(s)

SG02AD

## 📚 Bibliographie

http://slicot.org/objects/software/shared/doc/SG02AD.html

## 💡 Exemple



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
SCAL = 'N';
SORT = 'S';
ACC = 'N';
A = [0.0  1.0;
   0.0  0.0];
E = [1.0  0.0;
   0.0  1.0];
B = [0.0;
   1.0];
Q = [1.0  0.0;
   0.0  1.0;
   0.0  0.0];
R = [0.0;
   0.0;
   1.0];
L = zeros(N, N);
[RCONDU, X, ALFAR, ALFAI, BETA, S, T, U, IWARN, INFO] = slicot_sg02ad(DICO, JOBB, FACT, UPLO, JOBL, SCAL, SORT, ACC, P, A, E, B, Q, R, L, TOL)
```


## 🔗 Voir aussi

[slicot_sb02od](../slicot/slicot_sb02od.md), [care](../control_system/5_control_design_tuning/care.md), [dare](../control_system/5_control_design_tuning/dare.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

SLICOT Documentation
-->
