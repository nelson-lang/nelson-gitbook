#import "../nelson_help.typ": *

= poissrnd <statistics:2_probability_distributions.poissrnd>

Nombres aleatoires de Poisson

== Syntaxe

- #raw("r = poissrnd(lambda)");
- #raw("r = poissrnd(lambda, sz)");
- #raw("r = poissrnd(lambda, sz1, ..., szN)");

== Argument d'entrée

/ lambda: scalaire positif ou nul ou tableau : parametre de taux.
/ sz: scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[poissrnd]; genere des valeurs aleatoires de loi de Poisson.


== Exemple

``````matlab
rng(0);
r = poissrnd(4, 2, 3);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.poisspdf>)[poisspdf];, #nlink(<statistics:2_probability_distributions.poisscdf>)[poisscdf];, #nlink(<statistics:2_probability_distributions.poissinv>)[poissinv];, #nlink(<statistics:2_probability_distributions.poissstat>)[poissstat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
