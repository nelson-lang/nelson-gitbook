#import "../nelson_help.typ": *

= ipermute <elementary_functions:7_indexing_dimensions.ipermute>

Inverse de permute

== Syntaxe

- #raw("R = ipermute(A, order)");

== Argument d'entrée

/ A: an array.
/ order: Dimension order: vecteur de permutation

== Argument de sortie

/ R: result array rearranged with new dimension order.

== Description

#strong[ipermute]; permute les dimensions d'un tableau (dans l'ordre inverse de #strong[permute];).


== Exemple

``````matlab
x = [1 2 3; 4 5 6]
y = permute(x,[3 1 2])
x2 = ipermute(y,[3 1 2])
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.permute>)[permute];, #nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];, #nlink(<operators:transpose>)[transpose];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
