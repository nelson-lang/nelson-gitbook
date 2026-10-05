#import "nelson_help.typ": *

= bounds <data_analysis:bounds>

Plus petits et plus grands elements d'un tableau.

== Syntaxe

- #raw("[smallest, largest] = bounds(A)");
- #raw("[smallest, largest] = bounds(A, d)");
- #raw("[smallest, largest] = bounds(A, flag)");

== Argument d'entrée

/ A: input array.
/ d: dimension to operate along: positive integer scalar.
/ flag: optional argument forwarded to min and max.

== Argument de sortie

/ smallest: Smallest values.
/ largest: Largest values.

== Description

#strong[bounds]; renvoie les plus petits et les plus grands elements de A selon la dimension choisie.


== Exemple

``````matlab
A = [3 7 2; 9 1 5];
[s, l] = bounds(A)
``````


== Voir aussi

#nlink(<data_analysis:min>)[min];, #nlink(<data_analysis:max>)[max];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
