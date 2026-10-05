#import "../nelson_help.typ": *

= flipdim <elementary_functions:7_indexing_dimensions.flipdim>

Inverser un tableau selon une dimension spécifiée

== Syntaxe

- #raw("B = flipdim(A, dim)");

== Argument d'entrée

/ A: un tableau
/ dim: un entier positif

== Argument de sortie

/ B: flipped array.

== Description

#strong[flipdim]; renvoie un nouveau tableau de #strong[A]; inversé selon la dimension #strong[dim];.

 #strong[flipdim]; est similaire à#strong[flip]; et reste disponible pour compatibilité avec d'anciens scripts.


== Exemple

``````matlab
x = eye(3, 2);
y = flipdim(x, 1)
y = flipdim(x, 2)
y = flipdim(x, 3)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.flip>)[flip];, #nlink(<elementary_functions:7_indexing_dimensions.flipud>)[flipud];, #nlink(<elementary_functions:7_indexing_dimensions.fliplr>)[fliplr];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
