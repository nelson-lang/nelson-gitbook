#import "../nelson_help.typ": *

= pagectranspose <linear_algebra:4_matrix_functions.pagectranspose>

Transposée conjuguée par page

== Syntaxe

- #raw("Y = pagectranspose(X)");

== Argument d'entrée

/ X: tableau N-D.

== Argument de sortie

/ Y: tableau où chaque page est remplacée par sa transposée conjuguée.

== Description

#strong[pagectranspose]; applique la transposée conjuguée aux deux premières dimensions de chaque page du tableau N-D X : Y(:,:,i) \= X(:,:,i)'.


== Exemple

``````matlab
X = reshape((1:8) + 1i, 2, 2, 2);
Y = pagectranspose(X)
``````


== Voir aussi

#nlink(<linear_algebra:4_matrix_functions.pagetranspose>)[pagetranspose];, #nlink(<linear_algebra:4_matrix_functions.pagemtimes>)[pagemtimes];, #nlink(<operators:ctranspose>)[ctranspose];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
