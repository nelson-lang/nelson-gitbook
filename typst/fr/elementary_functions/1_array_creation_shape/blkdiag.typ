#import "../nelson_help.typ": *

= blkdiag <elementary_functions:1_array_creation_shape.blkdiag>

Matrice diagonale par blocs

== Syntaxe

- #raw("R = blkdiag(M1, ... , MN)");

== Argument d'entrée

/ M1, ..., MN: une matrice numérique 2D

== Argument de sortie

/ R: une matrice.

== Description

#strong[R \= blkdiag(M1, ... , MN)]; construit la matrice diagonale par blocs obtenue en alignant les matrices d'entrée #strong[M1, ... , MN]; le long de la diagonale de #strong[R];.


== Exemple

``````matlab
blkdiag(magic(2), magic(3), magic(4))
``````


== Voir aussi

#nlink(<constructors_functions:diag>)[diag];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
