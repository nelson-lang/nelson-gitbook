#import "../nelson_help.typ": *

= lyap <control_system:6_matrix_computations.lyap>

Solution de l'équation de Lyapunov continue.

== Syntaxe

- #raw("X = lyap(A, Q)");

== Argument d'entrée

/ A: matrice réelle
/ Q: matrice réelle

== Argument de sortie

/ X: matrice : solution de l'équation de Lyapunov.

== Description

Résout l'équation de Lyapunov continue A'X + XA \= -Q pour X donné A et Q.


== Exemple

``````matlab
A = [10, 20; -30, -40];
Q = [30, 10; 10, 10];
X = lyap (A, Q)
``````


== Voir aussi

#nlink(<control_system:6_matrix_computations.dlyap>)[dlyap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
