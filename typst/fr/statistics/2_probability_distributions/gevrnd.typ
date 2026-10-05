#import "../nelson_help.typ": *

= gevrnd <statistics:2_probability_distributions.gevrnd>

Nombres aleatoires de loi extreme generalisee

== Syntaxe

- #raw("r = gevrnd(k, sigma, mu)");
- #raw("r = gevrnd(k, sigma, mu, sz)");
- #raw("r = gevrnd(k, sigma, mu, sz1, ..., szN)");

== Argument d'entrée

/ k: tableau reel : parametre de forme.
/ sigma: tableau reel positif : parametre d'echelle.
/ mu: tableau reel : parametre de position.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[gevrnd]; genere des valeurs aleatoires de loi extreme generalisee.


== Exemple

``````matlab
r = gevrnd(0.2, 1, 0, 2, 3);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.gevpdf>)[gevpdf];, #nlink(<statistics:2_probability_distributions.gevcdf>)[gevcdf];, #nlink(<statistics:2_probability_distributions.gevinv>)[gevinv];, #nlink(<statistics:2_probability_distributions.gevstat>)[gevstat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
