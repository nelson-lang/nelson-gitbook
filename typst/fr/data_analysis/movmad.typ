#import "nelson_help.typ": *

= movmad <data_analysis:movmad>

Ecart absolu median mobile.

== Syntaxe

- #raw("R = movmad(A, window)");
- #raw("R = movmad(A, window, d)");

== Argument d'entrée

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Argument de sortie

/ R: Moving median absolute deviation.

== Description

#strong[movmad]; calcule l'ecart absolu median sur une fenetre mobile centree.


== Exemple

``````matlab
A = [1 2 8 4 5];
R = movmad(A, 3)
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
