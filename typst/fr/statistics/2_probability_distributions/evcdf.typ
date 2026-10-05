#import "../nelson_help.typ": *

= evcdf <statistics:2_probability_distributions.evcdf>

Fonction de repartition de la loi extreme value

== Syntaxe

- #raw("p = evcdf(x)");
- #raw("p = evcdf(x, mu)");
- #raw("p = evcdf(x, mu, sigma)");
- #raw("p = evcdf(x, mu, sigma, 'upper')");

== Argument d'entrée

/ x: scalaire ou tableau reel : valeurs.
/ mu: scalaire ou tableau reel : parametre de position. La valeur par defaut est 0.
/ sigma: scalaire ou tableau positif : parametre d'echelle. La valeur par defaut est 1.
/ 'upper': option pour retourner la probabilite de queue superieure.

== Argument de sortie

/ p: tableau : valeurs de probabilite.

== Description

#strong[evcdf]; evalue element par element les probabilites cumulees de la loi extreme value.


== Exemple

``````matlab
x = [-2 -1 0 1 2];
p = evcdf(x, 0, 1);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.evpdf>)[evpdf];, #nlink(<statistics:2_probability_distributions.evinv>)[evinv];, #nlink(<statistics:2_probability_distributions.evrnd>)[evrnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
