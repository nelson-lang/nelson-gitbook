#import "../nelson_help.typ": *

= geoinv <statistics:2_probability_distributions.geoinv>

Inverse de la fonction de repartition geometrique

== Syntaxe

- #raw("x = geoinv(y, p)");

== Argument d'entrée

/ y: scalaire reel ou tableau : valeurs de probabilite.
/ p: scalaire ou tableau dans l'intervalle \[0, 1\] : probabilite de succes.

== Argument de sortie

/ x: tableau : valeurs de probabilite inverse.

== Description

#strong[geoinv]; evalue les probabilites cumulees inverses geometriques element par element.


== Exemple

``````matlab
y = [0 0.25 0.9];
x = geoinv(y, 0.25);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.geopdf>)[geopdf];, #nlink(<statistics:2_probability_distributions.geocdf>)[geocdf];, #nlink(<statistics:2_probability_distributions.geornd>)[geornd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
