#import "../nelson_help.typ": *

= expstat <statistics:2_probability_distributions.expstat>

Moyenne et variance exponentielles

== Syntaxe

- #raw("[m, v] = expstat(mu)");

== Argument d'entrée

/ mu: scalaire positif ou tableau : moyenne.

== Argument de sortie

/ m: tableau : moyennes.
/ v: tableau : variances.

== Description

#strong[expstat]; retourne la moyenne et la variance de la loi exponentielle.


== Exemple

``````matlab
[m, v] = expstat(3);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.exppdf>)[exppdf];, #nlink(<statistics:2_probability_distributions.expcdf>)[expcdf];, #nlink(<statistics:2_probability_distributions.expinv>)[expinv];, #nlink(<statistics:2_probability_distributions.exprnd>)[exprnd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
