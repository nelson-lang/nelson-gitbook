#import "../nelson_help.typ": *

= poisscdf <statistics:2_probability_distributions.poisscdf>

Fonction de repartition de Poisson

== Syntaxe

- #raw("p = poisscdf(x, lambda)");
- #raw("p = poisscdf(x, lambda, 'upper')");

== Argument d'entrée

/ x: tableau numerique reel.
/ lambda: parametre de taux non negatif.

== Argument de sortie

/ p: probabilites cumulees ou de queue superieure.

== Description

#strong[poisscdf]; calcule par defaut les probabilites de queue inferieure de Poisson et les probabilites de queue superieure avec #strong['upper'];.


== Exemple

``````matlab
x = 0:10;
p = poisscdf(x, 4);
q = poisscdf(x, 4, 'upper');
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.poisspdf>)[poisspdf];, #nlink(<statistics:2_probability_distributions.poissinv>)[poissinv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
