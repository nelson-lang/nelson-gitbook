#import "../nelson_help.typ": *

= circshift <elementary_functions:7_indexing_dimensions.circshift>

Rotation circulaire

== Syntaxe

- #raw("R = circshift(M, N)");
- #raw("R = circshift(M, N, DIM)");

== Argument d'entrée

/ M: une variable
/ N: décalage
/ DIM: dimension sur laquelle opérer

== Argument de sortie

/ R: résultat de 'circshift'.

== Description

#strong[circshift]; effectue une rotation circulaire.


== Exemple

``````matlab
x = [10, 20, 30; 40, 50, 60; 70, 80, 90];
circshift (x, 1
circshift (x, -2))
``````


== Voir aussi

#nlink(<elementary_functions:1_array_creation_shape.repmat>)[repmat];, #nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
