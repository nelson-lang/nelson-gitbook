#import "../nelson_help.typ": *

= numel <elementary_functions:7_indexing_dimensions.numel>

Nombre d'éléments.

== Syntaxe

- #raw("nbel = numel(M)");

== Argument d'entrée

/ M: une variable

== Argument de sortie

/ nbel: le nombre d'éléments.

== Description

Renvoie le nombre d'éléments de l'objet M.


== Exemple

``````matlab
numel(ones(3, 0))
numel(ones(3,4))
numel(ones(3,4,5))
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
