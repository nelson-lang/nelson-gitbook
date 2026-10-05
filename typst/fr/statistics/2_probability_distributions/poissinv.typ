#import "../nelson_help.typ": *

= poissinv <statistics:2_probability_distributions.poissinv>

Fonction de repartition inverse de Poisson

== Syntaxe

- #raw("x = poissinv(y, lambda)");

== Argument d'entrée

/ y: tableau numerique reel de probabilites.
/ lambda: parametre de taux non negatif.

== Argument de sortie

/ x: plus petites valeurs entieres dont les probabilites cumulees sont au moins y.

== Description

#strong[poissinv]; calcule les probabilites inverses de queue inferieure de Poisson.


== Exemple

``````matlab
y = [0.025 0.5 0.975];
x = poissinv(y, 4);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.poisscdf>)[poisscdf];, #nlink(<statistics:2_probability_distributions.poisspdf>)[poisspdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
