#import "../nelson_help.typ": *

= betapdf <statistics:2_probability_distributions.betapdf>

Densite de probabilite beta

== Syntaxe

- #raw("y = betapdf(x, a, b)");

== Argument d'entrée

/ x: tableau numerique reel.
/ a: premier parametre de forme positif.
/ b: second parametre de forme positif.

== Argument de sortie

/ y: valeurs de densite de probabilite.

== Description

#strong[betapdf]; calcule les valeurs de densite de la distribution beta.


== Exemple

``````matlab
x = [0 0.1 0.5 0.9 1];
y = betapdf(x, 2, 5);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.betacdf>)[betacdf];, #nlink(<statistics:2_probability_distributions.betainv>)[betainv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
