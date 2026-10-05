#import "../nelson_help.typ": *

= betainv <statistics:2_probability_distributions.betainv>

Fonction de repartition inverse beta

== Syntaxe

- #raw("x = betainv(p, a, b)");

== Argument d'entrée

/ p: tableau numerique reel de probabilites.
/ a: premier parametre de forme positif.
/ b: second parametre de forme positif.

== Argument de sortie

/ x: valeurs inverses de queue inferieure beta.

== Description

#strong[betainv]; calcule les probabilites inverses de queue inferieure beta.


== Exemple

``````matlab
p = [0.025 0.5 0.975];
x = betainv(p, 2, 5);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.betacdf>)[betacdf];, #nlink(<statistics:2_probability_distributions.betapdf>)[betapdf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
