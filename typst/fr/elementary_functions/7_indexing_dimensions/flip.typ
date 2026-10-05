#import "../nelson_help.typ": *

= flip <elementary_functions:7_indexing_dimensions.flip>

Inverser l'ordre des éléments

== Syntaxe

- #raw("B = flip(A, dim)");

== Argument d'entrée

/ A: un tableau
/ dim: un entier positif

== Argument de sortie

/ B: tableau inversé.

== Description

#strong[flip]; renvoie un nouveau tableau de #strong[A]; inversé selon la dimension #strong[dim];.


== Exemple

``````matlab
x = eye(3, 2);
y = flip(x, 1)
y = flip(x, 2)
y = flip(x, 3)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.flipud>)[flipud];, #nlink(<elementary_functions:7_indexing_dimensions.fliplr>)[fliplr];, #nlink(<elementary_functions:7_indexing_dimensions.flipdim>)[flipdim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
