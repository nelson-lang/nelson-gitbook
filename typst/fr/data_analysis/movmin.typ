#import "nelson_help.typ": *

= movmin <data_analysis:movmin>

Minimum mobile.

== Syntaxe

- #raw("R = movmin(A, window)");
- #raw("R = movmin(A, window, d)");

== Argument d'entrée

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Argument de sortie

/ R: Moving minimum.

== Description

#strong[movmin]; calcule les valeurs minimales sur une fenetre mobile centree.


== Exemple

``````matlab
A = [1 2 8 4 5];
R = movmin(A, 3)
``````


== Voir aussi

#nlink(<data_analysis:min>)[min];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
