#import "../nelson_help.typ": *

= pagetranspose <linear_algebra:4_matrix_functions.pagetranspose>

Transposition par page

== Syntaxe

- #raw("Y = pagetranspose(X)");

== Argument d'entrée

/ X: tableau N-D.

== Argument de sortie

/ Y: tableau où les deux premières dimensions de chaque page sont transposées.

== Description

#strong[pagetranspose]; transpose les deux premières dimensions de chaque page du tableau N-D X : Y(:,:,i) \= X(:,:,i).'. Les valeurs complexes ne sont pas conjuguées.


== Exemple

``````matlab
X = reshape(1:24, 2, 3, 4);
Y = pagetranspose(X)
``````


== Voir aussi

#nlink(<linear_algebra:4_matrix_functions.pagectranspose>)[pagectranspose];, #nlink(<linear_algebra:4_matrix_functions.pagemtimes>)[pagemtimes];, #nlink(<elementary_functions:7_indexing_dimensions.permute>)[permute];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
