#import "../nelson_help.typ": *

= dlyap <control_system:6_matrix_computations.dlyap>

Équations de Lyapunov en temps discret.

== Syntaxe

- #raw("X = dlyap(A, Q)");

== Argument d'entrée

/ A: matrice réelle
/ Q: matrice réelle

== Argument de sortie

/ X: matrice : solution de l'équation de Lyapunov en temps discret.

== Description

#strong[X \= dlyap(A, Q)]; résout l'équation de Lyapunov en temps discret.


== Exemple

``````matlab
A = [10, 20; -30, -40];
Q = [30, 10; 10, 10];
X = dlyap (A, Q)
``````


== Voir aussi

#nlink(<control_system:6_matrix_computations.lyap>)[lyap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
