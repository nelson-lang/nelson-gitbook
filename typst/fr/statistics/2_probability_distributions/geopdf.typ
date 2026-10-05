#import "../nelson_help.typ": *

= geopdf <statistics:2_probability_distributions.geopdf>

Probabilite de la loi geometrique

== Syntaxe

- #raw("y = geopdf(x, p)");

== Argument d'entrée

/ x: scalaire reel ou tableau : nombre d'echecs avant le premier succes.
/ p: scalaire ou tableau dans l'intervalle \[0, 1\] : probabilite de succes.

== Argument de sortie

/ y: tableau : valeurs de probabilite.

== Description

#strong[geopdf]; evalue les probabilites geometriques element par element.


== Exemple

``````matlab
x = [0 1 2 5];
y = geopdf(x, 0.25);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.geocdf>)[geocdf];, #nlink(<statistics:2_probability_distributions.geoinv>)[geoinv];, #nlink(<statistics:2_probability_distributions.geornd>)[geornd];, #nlink(<statistics:2_probability_distributions.geostat>)[geostat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
