#import "../nelson_help.typ": *

= vander <elementary_functions:6_matrix_generation.vander>

Matrice de Vandermonde

== Syntaxe

- #raw("A = vander(v)");

== Argument d'entrée

/ v: un vecteur numérique.

== Argument de sortie

/ A: matrice de Vandermonde.

== Description

#strong[A \= vander(v)]; renvoie la matrice de Vandermonde.


== Bibliographie

https:\/\/en.wikipedia.org\/wiki\/Vandermonde\_matrix

== Exemple

``````matlab
A = vander(1:.5:3)
``````


== Voir aussi

#nlink(<elementary_functions:6_matrix_generation.toeplitz>)[toeplitz];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
