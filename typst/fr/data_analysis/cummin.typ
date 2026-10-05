#import "nelson_help.typ": *

= cummin <data_analysis:cummin>

Minimum cumulatif des elements d'un tableau.

== Syntaxe

- #raw("R = cummin(A)");
- #raw("R = cummin(A, d)");

== Argument d'entrée

/ A: input array.
/ d: dimension to operate along: positive integer scalar.

== Argument de sortie

/ R: Cumulative minimum of array elements.

== Description

#strong[cummin]; renvoie les minimums cumulatifs selon la dimension choisie.


== Exemple

``````matlab
A = [3 1 4 2];
R = cummin(A)
``````


== Voir aussi

#nlink(<data_analysis:min>)[min];, #nlink(<data_analysis:cummax>)[cummax];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
