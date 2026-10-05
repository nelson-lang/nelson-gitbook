#import "../nelson_help.typ": *

= flipud <elementary_functions:7_indexing_dimensions.flipud>

Inverser l'ordre des éléments de haut en bas

== Syntaxe

- #raw("B = flipud(A)");

== Argument d'entrée

/ A: un tableau

== Argument de sortie

/ B: tableau inversé.

== Description

#strong[flipud]; renvoie un nouveau tableau de #strong[A]; inversé de haut en bas.


== Exemple

``````matlab
x = eye(3, 2);
y = flipud(x)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.fliplr>)[fliplr];, #nlink(<elementary_functions:7_indexing_dimensions.flip>)[flip];, #nlink(<elementary_functions:7_indexing_dimensions.flipdim>)[flipdim];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
