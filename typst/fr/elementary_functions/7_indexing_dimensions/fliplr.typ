#import "../nelson_help.typ": *

= fliplr <elementary_functions:7_indexing_dimensions.fliplr>

Inverser l'ordre des éléments de gauche à droite

== Syntaxe

- #raw("B = fliplr(A)");

== Argument d'entrée

/ A: un tableau

== Argument de sortie

/ B: tableau inversé.

== Description

#strong[fliplr]; renvoie un nouveau tableau de #strong[A]; inversé de gauche à droite.


== Exemple

``````matlab
x = eye(3, 2);
y = fliplr(x)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.flipud>)[flipud];, #nlink(<elementary_functions:7_indexing_dimensions.flip>)[flip];, #nlink(<elementary_functions:7_indexing_dimensions.flipdim>)[flipdim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
