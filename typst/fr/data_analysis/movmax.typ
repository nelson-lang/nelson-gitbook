#import "nelson_help.typ": *

= movmax <data_analysis:movmax>

Maximum mobile.

== Syntaxe

- #raw("R = movmax(A, window)");
- #raw("R = movmax(A, window, d)");

== Argument d'entrée

/ A: input array.
/ window: positive scalar window length.
/ d: dimension to operate along: positive integer scalar.

== Argument de sortie

/ R: Moving maximum.

== Description

#strong[movmax]; calcule les valeurs maximales sur une fenetre mobile centree.


== Exemple

``````matlab
A = [1 2 8 4 5];
R = movmax(A, 3)
``````


== Voir aussi

#nlink(<data_analysis:max>)[max];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
