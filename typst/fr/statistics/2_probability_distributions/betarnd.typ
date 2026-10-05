#import "../nelson_help.typ": *

= betarnd <statistics:2_probability_distributions.betarnd>

Nombres aleatoires beta

== Syntaxe

- #raw("r = betarnd(a, b)");
- #raw("r = betarnd(a, b, sz)");
- #raw("r = betarnd(a, b, sz1, ..., szN)");

== Argument d'entrée

/ a: scalaire positif ou tableau : premier parametre de forme.
/ b: scalaire positif ou tableau : second parametre de forme.
/ sz: scalaire, vecteur ou dimensions separees par des virgules : taille de la sortie.

== Argument de sortie

/ r: tableau : valeurs aleatoires.

== Description

#strong[betarnd]; genere des valeurs aleatoires de loi beta.


== Exemple

``````matlab
rng(0);
r = betarnd(2, 5, 2, 3);
``````


== Voir aussi

#nlink(<statistics:2_probability_distributions.betapdf>)[betapdf];, #nlink(<statistics:2_probability_distributions.betacdf>)[betacdf];, #nlink(<statistics:2_probability_distributions.betainv>)[betainv];, #nlink(<statistics:2_probability_distributions.betastat>)[betastat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
