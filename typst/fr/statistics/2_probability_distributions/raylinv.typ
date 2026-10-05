#import "../nelson_help.typ": *

= raylinv <statistics:2_probability_distributions.raylinv>

Inverse de repartition Rayleigh

== Syntaxe

- #raw("x = raylinv(p, b)");

== Argument d'entrée

/ p: probabilites dans \[0, 1\].
/ b: scalaire positif ou tableau : parametre d'echelle.

== Argument de sortie

/ x: tableau : valeurs inverses cumulees.

== Description

#strong[raylinv]; evalue les inverses Rayleigh element par element.


== Exemple

``````matlab
p = [0 0.3934693402873666 0.8646647167633873];
x = raylinv(p, 2);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.raylpdf>)[raylpdf];, #nlink(<statistics:2_probability_distributions.raylcdf>)[raylcdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
