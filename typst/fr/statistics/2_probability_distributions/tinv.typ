#import "../nelson_help.typ": *

= tinv <statistics:2_probability_distributions.tinv>

Fonction de repartition inverse de Student t

== Syntaxe

- #raw("x = tinv(p, v)");

== Argument d'entrée

/ p: tableau numerique reel : probabilites.
/ v: tableau numerique reel positif ou scalaire : degres de liberte.

== Argument de sortie

/ x: valeurs inverses de queue inferieure de Student t.

== Description

#strong[tinv]; calcule les probabilites inverses de queue inferieure de Student t.


== Exemple

``````matlab
p = [0.025 0.5 0.975];
x = tinv(p, 5);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.tcdf>)[tcdf];, #nlink(<statistics:2_probability_distributions.tpdf>)[tpdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
