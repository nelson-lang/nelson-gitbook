#import "../nelson_help.typ": *

= magic <elementary_functions:6_matrix_generation.magic>

Magic square

== Syntaxe

- #raw("M = magic(N)");

== Argument d'entrée

/ N: Matrix order, specified as a scalar integer.

== Argument de sortie

/ M: result of magic function.

== Description

#strong[M \= magic(N)]; computes an square matrix constructed as an arrangement of the 1:n^2 such that the row sums, column sums, and diagonal sums are all equal to the same value.


== Exemple

``````matlab
M = magic(3)
``````


== Voir aussi

#nlink(<constructors_functions:ones>)[ones];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
