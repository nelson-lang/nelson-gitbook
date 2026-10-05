#import "nelson_help.typ": *

= cummax <data_analysis:cummax>

Maximum cumulatif des elements d'un tableau.

== Syntaxe

- #raw("R = cummax(A)");
- #raw("R = cummax(A, d)");

== Argument d'entrée

/ A: input array.
/ d: dimension to operate along: positive integer scalar.

== Argument de sortie

/ R: Cumulative maximum of array elements.

== Description

#strong[cummax]; renvoie les maximums cumulatifs selon la dimension choisie.


== Exemple

``````matlab
A = [3 1 4 2];
R = cummax(A)
``````


== Voir aussi

#nlink(<data_analysis:max>)[max];, #nlink(<data_analysis:cummin>)[cummin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
