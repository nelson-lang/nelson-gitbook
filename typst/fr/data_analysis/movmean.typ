#import "nelson_help.typ": *

= movmean <data_analysis:movmean>

Moyenne mobile.

== Syntaxe

- #raw("R = movmean(A, window)");
- #raw("R = movmean(A, window, d)");

== Argument d'entrée

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Argument de sortie

/ R: Moving mean.

== Description

#strong[movmean]; calcule les moyennes sur une fenetre mobile centree.


== Exemple

``````matlab
A = [1 2 8 4 5];
R = movmean(A, 3)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
