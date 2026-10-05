#import "../nelson_help.typ": *

= ndims <elementary_functions:7_indexing_dimensions.ndims>

Nombre de dimensions d'un tableau.

== Syntaxe

- #raw("n = ndims(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ n: une valeur entière : nombre de dimensions de M.

== Description

#strong[n \= ndims(M)]; renvoie le nombre de dimensions du tableau#strong[M];.

 #strong[M]; est supérieur ou égal à 2.


== Exemple

``````matlab
ndims(ones(3, 0))
ndims(3)
ndims([1 2 3 4 5])
ndims(ones(3, 4, 5))
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.size>)[size];, #nlink(<elementary_functions:7_indexing_dimensions.length>)[length];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
