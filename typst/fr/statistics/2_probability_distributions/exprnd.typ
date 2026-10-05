#import "../nelson_help.typ": *

= exprnd <statistics:2_probability_distributions.exprnd>

Nombres aleatoires exponentiels

== Syntaxe

- #raw("r = exprnd(mu)");
- #raw("r = exprnd(mu, sz)");
- #raw("r = exprnd(mu, sz1, ..., szN)");

== Argument d'entrée

/ mu: scalaire positif ou tableau : moyenne.
/ sz: scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[exprnd]; genere des valeurs aleatoires de loi exponentielle.


== Exemple

``````matlab
rng(0);
r = exprnd(2, 2, 3);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.exppdf>)[exppdf];, #nlink(<statistics:2_probability_distributions.expcdf>)[expcdf];, #nlink(<statistics:2_probability_distributions.expinv>)[expinv];, #nlink(<statistics:2_probability_distributions.expstat>)[expstat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
