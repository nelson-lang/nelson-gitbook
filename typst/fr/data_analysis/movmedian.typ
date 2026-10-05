#import "nelson_help.typ": *

= movmedian <data_analysis:movmedian>

Mediane mobile.

== Syntaxe

- #raw("R = movmedian(A, window)");
- #raw("R = movmedian(A, window, d)");

== Argument d'entrée

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Argument de sortie

/ R: Moving median.

== Description

#strong[movmedian]; calcule les medianes sur une fenetre mobile centree.


== Exemple

``````matlab
A = [1 2 8 4 5];
R = movmedian(A, 3)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
