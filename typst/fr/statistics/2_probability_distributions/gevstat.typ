#import "../nelson_help.typ": *

= gevstat <statistics:2_probability_distributions.gevstat>

Moyenne et variance de loi extreme generalisee

== Syntaxe

- #raw("m = gevstat(k, sigma, mu)");
- #raw("[m, v] = gevstat(k, sigma, mu)");

== Argument d'entrée

/ k: tableau reel : parametre de forme.
/ sigma: tableau reel positif : parametre d'echelle.
/ mu: tableau reel : parametre de position.

== Argument de sortie

/ m: tableau : moyennes.
/ v: tableau : variances.

== Description

#strong[gevstat]; calcule la moyenne et la variance des lois extremes generalisees lorsqu'elles sont finies.


== Exemple

``````matlab
[m, v] = gevstat([0 0.2], [1 1], [0 0]);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.gevpdf>)[gevpdf];, #nlink(<statistics:2_probability_distributions.gevcdf>)[gevcdf];, #nlink(<statistics:2_probability_distributions.gevinv>)[gevinv];, #nlink(<statistics:2_probability_distributions.gevrnd>)[gevrnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
