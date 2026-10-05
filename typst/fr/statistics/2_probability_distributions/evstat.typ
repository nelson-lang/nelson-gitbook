#import "../nelson_help.typ": *

= evstat <statistics:2_probability_distributions.evstat>

Moyenne et variance de la loi extreme value

== Syntaxe

- #raw("[m, v] = evstat(mu, sigma)");

== Argument d'entrée

/ mu: scalaire ou tableau reel : parametre de position.
/ sigma: scalaire ou tableau positif : parametre d'echelle.

== Argument de sortie

/ m: tableau : valeurs de moyenne.
/ v: tableau : valeurs de variance.

== Description

#strong[evstat]; retourne la moyenne et la variance de la loi extreme value.


== Exemple

``````matlab
[m, v] = evstat(0, 1);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.evpdf>)[evpdf];, #nlink(<statistics:2_probability_distributions.evcdf>)[evcdf];, #nlink(<statistics:2_probability_distributions.evinv>)[evinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
