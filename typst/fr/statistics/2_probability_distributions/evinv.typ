#import "../nelson_help.typ": *

= evinv <statistics:2_probability_distributions.evinv>

Inverse de la fonction de repartition de la loi extreme value

== Syntaxe

- #raw("x = evinv(p)");
- #raw("x = evinv(p, mu)");
- #raw("x = evinv(p, mu, sigma)");

== Argument d'entrée

/ p: scalaire ou tableau : probabilites.
/ mu: scalaire ou tableau reel : parametre de position. La valeur par defaut est 0.
/ sigma: scalaire ou tableau positif : parametre d'echelle. La valeur par defaut est 1.

== Argument de sortie

/ x: tableau : valeurs inverses.

== Description

#strong[evinv]; evalue element par element l'inverse de la fonction de repartition de la loi extreme value.


== Exemple

``````matlab
p = [0.1 0.5 0.9];
x = evinv(p, 0, 1);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.evpdf>)[evpdf];, #nlink(<statistics:2_probability_distributions.evcdf>)[evcdf];, #nlink(<statistics:2_probability_distributions.evrnd>)[evrnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
