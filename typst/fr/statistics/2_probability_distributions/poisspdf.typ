#import "../nelson_help.typ": *

= poisspdf <statistics:2_probability_distributions.poisspdf>

Fonction de masse de Poisson

== Syntaxe

- #raw("y = poisspdf(x, lambda)");

== Argument d'entrée

/ x: tableau numerique reel.
/ lambda: parametre de taux non negatif.

== Argument de sortie

/ y: valeurs de masse de probabilite.

== Description

#strong[poisspdf]; calcule les valeurs de masse de probabilite de Poisson.


== Exemple

``````matlab
x = 0:10;
y = poisspdf(x, 4);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.poisscdf>)[poisscdf];, #nlink(<statistics:2_probability_distributions.poissinv>)[poissinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
