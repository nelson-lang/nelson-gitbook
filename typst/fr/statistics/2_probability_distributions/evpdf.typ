#import "../nelson_help.typ": *

= evpdf <statistics:2_probability_distributions.evpdf>

Fonction de densite de la loi extreme value

== Syntaxe

- #raw("y = evpdf(x)");
- #raw("y = evpdf(x, mu)");
- #raw("y = evpdf(x, mu, sigma)");

== Argument d'entrée

/ x: scalaire ou tableau reel : valeurs.
/ mu: scalaire ou tableau reel : parametre de position. La valeur par defaut est 0.
/ sigma: scalaire ou tableau positif : parametre d'echelle. La valeur par defaut est 1.

== Argument de sortie

/ y: tableau : valeurs de densite.

== Description

#strong[evpdf]; evalue element par element la densite de la loi extreme value.


== Exemple

``````matlab
x = [-2 -1 0 1 2];
y = evpdf(x, 0, 1);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.evcdf>)[evcdf];, #nlink(<statistics:2_probability_distributions.evinv>)[evinv];, #nlink(<statistics:2_probability_distributions.evrnd>)[evrnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
