#import "../nelson_help.typ": *

= mode <statistics:1_descriptive_statistics_visualization.mode>

Valeurs les plus frequentes.

== Syntaxe

- #raw("M = mode(A)");
- #raw("M = mode(A, d)");
- #raw("[M, F, C] = mode(...)");

== Argument d'entrée

/ A: input array.
/ d: dimension to operate along: positive integer scalar.

== Argument de sortie

/ M: Most frequent values.
/ F: Frequencies of the most frequent values.
/ C: Cell array containing the most frequent values.

== Description

#strong[mode]; renvoie les valeurs les plus frequentes de A selon la dimension choisie.


== Fonction(s) utilisée(s)

mean median std

== Exemple

``````matlab
A = [1 2 2; 3 3 4];
[M, F, C] = mode(A)
``````


== Voir aussi

#nlink(<statistics:1_descriptive_statistics_visualization.median>)[median];, #nlink(<data_analysis:sort>)[sort];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
