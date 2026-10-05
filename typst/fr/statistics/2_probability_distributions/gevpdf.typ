#import "../nelson_help.typ": *

= gevpdf <statistics:2_probability_distributions.gevpdf>

Densite de probabilite de loi extreme generalisee

== Syntaxe

- #raw("y = gevpdf(x, k, sigma, mu)");

== Argument d'entrée

/ x: tableau reel : valeurs.
/ k: tableau reel : parametre de forme.
/ sigma: tableau reel positif : parametre d'echelle.
/ mu: tableau reel : parametre de position.

== Argument de sortie

/ y: tableau : valeurs de densite.

== Description

#strong[gevpdf]; calcule les densites de loi extreme generalisee element par element.


== Exemple

``````matlab
x = [-2 -1 0 1 2];
y = gevpdf(x, 0.2, 1, 0);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.gevcdf>)[gevcdf];, #nlink(<statistics:2_probability_distributions.gevinv>)[gevinv];, #nlink(<statistics:2_probability_distributions.gevrnd>)[gevrnd];, #nlink(<statistics:2_probability_distributions.gevstat>)[gevstat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
