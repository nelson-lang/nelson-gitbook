#import "../nelson_help.typ": *

= are <control_system:5_control_design_tuning.are>

Solution d'equation algebrique de Riccati.

== Syntaxe

- #raw("X = are(A, B, C)");

== Argument d'entrée

/ A: matrice d'etat carree.
/ B: matrice symetrique non negative du terme quadratique.
/ C: matrice symetrique de ponderation d'etat.

== Argument de sortie

/ X: solution stabilisante.

== Description

#strong[are]; resout #strong[A' \* X + X \* A - X \* B \* X + C \= 0];.


== Exemple

``````matlab

A = [-1 0; 0 -2];
B = [1 0; 0 0];
C = eye(2);
X = are(A, B, C)

``````


== Voir aussi

#nlink(<control_system:5_control_design_tuning.care>)[care];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
