#import "../nelson_help.typ": *

= geornd <statistics:2_probability_distributions.geornd>

Nombres aleatoires geometriques

== Syntaxe

- #raw("r = geornd(p)");
- #raw("r = geornd(p, sz)");
- #raw("r = geornd(p, sz1, ..., szN)");

== Argument d'entrée

/ p: scalaire ou tableau dans l'intervalle \[0, 1\] : probabilite de succes.
/ sz: scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[geornd]; genere des valeurs aleatoires de loi geometrique.


== Exemple

``````matlab
rng(0);
r = geornd(0.25, 2, 3);
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
