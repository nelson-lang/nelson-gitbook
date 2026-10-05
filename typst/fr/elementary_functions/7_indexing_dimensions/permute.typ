#import "../nelson_help.typ": *

= permute <elementary_functions:7_indexing_dimensions.permute>

Permute les dimensions d'un tableau.

== Syntaxe

- #raw("R = permute(A, order)");

== Argument d'entrée

/ A: un tableau.
/ order: ordre des dimensions : vecteur ligne

== Argument de sortie

/ R: tableau résultat réorganisé selon le nouvel ordre des dimensions.

== Description

#strong[permute]; permute les dimensions d'un tableau.


== Exemple

``````matlab
x = [1 2 3; 4 5 6]
y = permute(x,[3 1 2])
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.ipermute>)[ipermute];, #nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];, #nlink(<operators:transpose>)[transpose];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
