#import "../nelson_help.typ": *

= betastat <statistics:2_probability_distributions.betastat>

Moyenne et variance beta

== Syntaxe

- #raw("[m, v] = betastat(a, b)");

== Argument d'entrée

/ a: scalaire positif ou tableau : premier parametre de forme.
/ b: scalaire positif ou tableau : second parametre de forme.

== Argument de sortie

/ m: tableau : moyennes.
/ v: tableau : variances.

== Description

#strong[betastat]; retourne la moyenne et la variance de la loi beta.


== Exemple

``````matlab
[m, v] = betastat([1 2], [3 4]);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
