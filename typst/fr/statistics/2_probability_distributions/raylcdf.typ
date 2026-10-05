#import "../nelson_help.typ": *

= raylcdf <statistics:2_probability_distributions.raylcdf>

Fonction de repartition Rayleigh

== Syntaxe

- #raw("p = raylcdf(x, b)");
- #raw("p = raylcdf(x, b, 'upper')");

== Argument d'entrée

/ x: scalaire reel ou tableau : valeurs.
/ b: scalaire positif ou tableau : parametre d'echelle.

== Argument de sortie

/ p: tableau : probabilites cumulees.

== Description

#strong[raylcdf]; evalue les probabilites cumulees Rayleigh element par element.


== Exemple

``````matlab
p = raylcdf([0 2 4], 2);
q = raylcdf([0 2 4], 2, 'upper');
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.raylpdf>)[raylpdf];, #nlink(<statistics:2_probability_distributions.raylinv>)[raylinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
