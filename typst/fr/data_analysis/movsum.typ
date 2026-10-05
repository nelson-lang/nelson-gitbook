#import "nelson_help.typ": *

= movsum <data_analysis:movsum>

Somme mobile.

== Syntaxe

- #raw("R = movsum(A, window)");
- #raw("R = movsum(A, window, d)");

== Argument d'entrée

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Argument de sortie

/ R: Moving sum.

== Description

#strong[movsum]; calcule les sommes sur une fenetre mobile centree.


== Exemple

``````matlab
A = [1 2 8 4 5];
R = movsum(A, 3)
``````


== Voir aussi

#nlink(<data_analysis:sum>)[sum];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
