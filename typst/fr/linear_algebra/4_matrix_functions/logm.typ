#import "../nelson_help.typ": *

= logm <linear_algebra:4_matrix_functions.logm>

Calcule le logarithme matriciel d'une matrice carrée.

== Syntaxe

- #raw("res = logm(x)");

== Argument d'entrée

/ x: une valeur numérique : scalaire ou matrice carrée (double ou simple précision)

== Argument de sortie

/ res: une valeur numérique : une matrice carrée

== Description

#strong[logm(x)]; calcule le logarithme matriciel de x.

 Le calcul est effectué en bloc-diagonalant d'abord x puis en appliquant une approximation de Pade sur chaque bloc.


== Exemple

``````matlab
A = eye(3, 3);
res = logm(A)
res = logm(A+i)
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
