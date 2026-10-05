#import "../nelson_help.typ": *

= dare <control_system:5_control_design_tuning.dare>

Solution de l'équation de Riccati algébrique en temps discret.

== Syntaxe

- #raw("[X, L, G] = dare(A, B, Q)");
- #raw("[X, L, G] = dare(A, B, Q, R, S, E)");

== Argument d'entrée

/ A: Matrice représentant l'état avec dimensions n x n, où n correspond au nombre d'états.
/ B: Matrice représentant le contrôle avec dimensions n x p, où p est le nombre d'entrées.
/ Q: Matrice décrivant le coût associé à l'état, ayant dimensions n x n, où n est le nombre d'états.
/ R: Matrice représentant le coût associé au contrôle, avec dimensions p x p, où p est le nombre d'entrées.
/ S: Matrice optionnellement réelle avec dimensions n x p.
/ E: Matrice avec dimensions n x n qui sert de matrice descripteur.

== Argument de sortie

/ X: solution stabilisée pour l'équation de Riccati en temps discret de dimension n x n.
/ L: Vecteur des pôles en boucle fermée.
/ G: Matrice de gain.

== Description

La fonction #strong[dare(A, B, Q)]; calcule la solution exclusive, notée #strong[X];, pour l'équation de Riccati algébrique en temps discret avec les matrices #strong[A];, #strong[B]; et #strong[Q];, et fournit également les matrices supplémentaires #strong[L]; et #strong[G];.


== Exemple

``````matlab
a = [-3 2;1 1];
b = [0 ; 1];
c = [1 -1];
r = 3;
[x, l, g] = dare(a, b, c'*c, r)

``````


== Voir aussi

#nlink(<slicot:slicot_sb02od>)[slicot\_sb02od];, #nlink(<slicot:slicot_sg02ad>)[slicot\_sg02ad];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: SLICOT Documentation
