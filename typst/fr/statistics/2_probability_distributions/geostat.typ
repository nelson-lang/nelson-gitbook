#import "../nelson_help.typ": *

= geostat <statistics:2_probability_distributions.geostat>

Moyenne et variance geometriques

== Syntaxe

- #raw("[m, v] = geostat(p)");

== Argument d'entrée

/ p: scalaire ou tableau dans l'intervalle \[0, 1\] : probabilite de succes.

== Argument de sortie

/ m: tableau : moyennes.
/ v: tableau : variances.

== Description

#strong[geostat]; retourne la moyenne et la variance de la loi geometrique.


== Exemple

``````matlab
[m, v] = geostat(0.25);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.geopdf>)[geopdf];, #nlink(<statistics:2_probability_distributions.geocdf>)[geocdf];, #nlink(<statistics:2_probability_distributions.geoinv>)[geoinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
