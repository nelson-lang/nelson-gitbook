#import "../nelson_help.typ": *

= betacdf <statistics:2_probability_distributions.betacdf>

Fonction de repartition beta

== Syntaxe

- #raw("p = betacdf(x, a, b)");
- #raw("p = betacdf(x, a, b, 'upper')");

== Argument d'entrée

/ x: tableau numerique reel.
/ a: premier parametre de forme positif.
/ b: second parametre de forme positif.

== Argument de sortie

/ p: probabilites cumulees ou de queue superieure.

== Description

#strong[betacdf]; calcule par defaut les probabilites de queue inferieure beta et les probabilites de queue superieure avec #strong['upper'];.


== Exemple

``````matlab
x = [0 0.1 0.5 0.9 1];
p = betacdf(x, 2, 5);
q = betacdf(x, 2, 5, 'upper');
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.betapdf>)[betapdf];, #nlink(<statistics:2_probability_distributions.betainv>)[betainv];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
