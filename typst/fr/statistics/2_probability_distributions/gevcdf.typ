#import "../nelson_help.typ": *

= gevcdf <statistics:2_probability_distributions.gevcdf>

Fonction de repartition de loi extreme generalisee

== Syntaxe

- #raw("p = gevcdf(x, k, sigma, mu)");
- #raw("p = gevcdf(x, k, sigma, mu, 'upper')");

== Argument d'entrée

/ x: tableau reel : valeurs.
/ k: tableau reel : parametre de forme.
/ sigma: tableau reel positif : parametre d'echelle.
/ mu: tableau reel : parametre de position.

== Argument de sortie

/ p: tableau : probabilites cumulees.

== Description

#strong[gevcdf]; calcule les probabilites de queue inferieure par defaut et de queue superieure avec #strong['upper'];.


== Exemple

``````matlab
x = [-2 -1 0 1 2];
p = gevcdf(x, 0.2, 1, 0);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.gevpdf>)[gevpdf];, #nlink(<statistics:2_probability_distributions.gevinv>)[gevinv];, #nlink(<statistics:2_probability_distributions.gevrnd>)[gevrnd];, #nlink(<statistics:2_probability_distributions.gevstat>)[gevstat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
