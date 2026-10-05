#import "../nelson_help.typ": *

= inv <linear_algebra:1_linear_systems.inv>

Inverse de matrice.

== Syntaxe

- #raw("res = inv(x)");

== Argument d'entrée

/ x: une valeur numérique : scalaire ou matrice carrée (double ou simple précision)

== Argument de sortie

/ res: une valeur numérique : une matrice carrée

== Description

#strong[inv(x)]; calcule l'inverse de la matrice x.


== Exemple

``````matlab
X = rand(10, 10);
Y = inv(X);
Y * X

``````


== Voir aussi

#nlink(<linear_algebra:4_matrix_functions.expm>)[expm];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.4.0], [warning about 'Matrix is singular to working precision'],
)

// Auteur: Allan CORNET
