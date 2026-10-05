#import "../nelson_help.typ": *

= geocdf <statistics:2_probability_distributions.geocdf>

Fonction de repartition geometrique

== Syntaxe

- #raw("y = geocdf(x, p)");
- #raw("y = geocdf(x, p, 'upper')");

== Argument d'entrée

/ x: scalaire reel ou tableau : nombre d'echecs avant le premier succes.
/ p: scalaire ou tableau dans l'intervalle \[0, 1\] : probabilite de succes.
/ 'upper': option pour retourner la probabilite de queue superieure.

== Argument de sortie

/ y: tableau : valeurs de probabilite.

== Description

#strong[geocdf]; evalue les probabilites cumulees geometriques element par element.


== Exemple

``````matlab
x = [0 1 2 5];
y = geocdf(x, 0.25);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.geopdf>)[geopdf];, #nlink(<statistics:2_probability_distributions.geoinv>)[geoinv];, #nlink(<statistics:2_probability_distributions.geornd>)[geornd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
