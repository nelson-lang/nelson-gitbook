#import "../nelson_help.typ": *

= null <linear_algebra:1_linear_systems.null>

Noyau d'une matrice

== Syntaxe

- #raw("Z = null(A)");
- #raw("Z = null(A, 'r')");

== Argument d'entrée

/ A: une matrice numérique 2D.

== Argument de sortie

/ Z: base orthonormale du noyau de A ; avec 'r', une base rationnelle.

== Description

#strong[null]; retourne une base orthonormale du noyau de A, obtenue à partir de la décomposition en valeurs singulières. null(A, 'r') retourne une base rationnelle du noyau obtenue à partir de la forme échelonnée réduite.


== Exemple

``````matlab
A = [1 2 3; 4 5 6; 7 8 9];
Z = null(A)
``````


== Voir aussi

#nlink(<linear_algebra:1_linear_systems.orth>)[orth];, #nlink(<linear_algebra:1_linear_systems.rank>)[rank];, #nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
