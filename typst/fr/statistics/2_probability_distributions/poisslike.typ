#import "../nelson_help.typ": *

= poisslike <statistics:2_probability_distributions.poisslike>

Oppose de la log-vraisemblance de Poisson

== Syntaxe

- #raw("nlogL = poisslike(lambda, x)");
- #raw("[nlogL, avar] = poisslike(lambda, x)");

== Argument d'entrée

/ lambda: scalaire positif ou nul : parametre de taux de Poisson.
/ x: tableau reel non vide d'entiers finis positifs ou nuls : comptes observes.

== Argument de sortie

/ nlogL: scalaire : oppose de la log-vraisemblance.
/ avar: scalaire : estimation de variance asymptotique.

== Description

#strong[poisslike]; retourne l'oppose de la log-vraisemblance pour des donnees de loi de Poisson et l'estimation de variance asymptotique.


== Exemple

``````matlab
x = [0 1 2 3 5 8];
[nlogL, avar] = poisslike(3, x);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.poissfit>)[poissfit];, #nlink(<statistics:2_probability_distributions.poisspdf>)[poisspdf];, #nlink(<statistics:2_probability_distributions.poisscdf>)[poisscdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
