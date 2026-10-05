#import "../nelson_help.typ": *

= tpdf <statistics:2_probability_distributions.tpdf>

Densite de probabilite de Student t

== Syntaxe

- #raw("y = tpdf(x, v)");

== Argument d'entrée

/ x: tableau numerique reel : valeurs ou la distribution est evaluee.
/ v: tableau numerique reel positif ou scalaire : degres de liberte.

== Argument de sortie

/ y: valeurs de densite de probabilite.

== Description

#strong[tpdf]; calcule les valeurs de densite de probabilite de Student t. Les entrees scalaires sont etendues a la taille des tableaux.


== Exemple

``````matlab
x = [-3 -1 0 1 3];
y = tpdf(x, 5);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.tcdf>)[tcdf];, #nlink(<statistics:2_probability_distributions.tinv>)[tinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
