#import "../nelson_help.typ": *

= raylpdf <statistics:2_probability_distributions.raylpdf>

Densite de probabilite Rayleigh

== Syntaxe

- #raw("y = raylpdf(x, b)");

== Argument d'entrée

/ x: scalaire reel ou tableau : valeurs.
/ b: scalaire positif ou tableau : parametre d'echelle.

== Argument de sortie

/ y: tableau : valeurs de densite.

== Description

#strong[raylpdf]; evalue les densites Rayleigh element par element.


== Exemple

``````matlab
x = [0 2 4];
y = raylpdf(x, 2);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.raylcdf>)[raylcdf];, #nlink(<statistics:2_probability_distributions.raylinv>)[raylinv];, #nlink(<statistics:2_probability_distributions.raylrnd>)[raylrnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
