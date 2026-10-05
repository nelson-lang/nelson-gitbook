#import "../nelson_help.typ": *

= poissstat <statistics:2_probability_distributions.poissstat>

Moyenne et variance Poisson

== Syntaxe

- #raw("[m, v] = poissstat(lambda)");

== Argument d'entrée

/ lambda: scalaire non negatif ou tableau : parametre de taux.

== Argument de sortie

/ m: tableau : moyennes.
/ v: tableau : variances.

== Description

#strong[poissstat]; retourne la moyenne et la variance de la loi de Poisson.


== Exemple

``````matlab
[m, v] = poissstat([0 1 5]);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
