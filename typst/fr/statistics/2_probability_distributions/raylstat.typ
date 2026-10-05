#import "../nelson_help.typ": *

= raylstat <statistics:2_probability_distributions.raylstat>

Moyenne et variance Rayleigh

== Syntaxe

- #raw("[m, v] = raylstat(b)");

== Argument d'entrée

/ b: scalaire positif ou tableau : parametre d'echelle.

== Argument de sortie

/ m: tableau : moyennes.
/ v: tableau : variances.

== Description

#strong[raylstat]; renvoie la moyenne et la variance element par element de lois Rayleigh.


== Exemple

``````matlab
[m, v] = raylstat(2);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.raylpdf>)[raylpdf];, #nlink(<statistics:2_probability_distributions.raylrnd>)[raylrnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
