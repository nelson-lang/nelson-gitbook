#import "../nelson_help.typ": *

= gamstat <statistics:2_probability_distributions.gamstat>

Moyenne et variance gamma

== Syntaxe

- #raw("[m, v] = gamstat(a, b)");

== Argument d'entrée

/ a: scalaire positif ou tableau : parametre de forme.
/ b: scalaire positif ou tableau : parametre d'echelle.

== Argument de sortie

/ m: tableau : moyennes.
/ v: tableau : variances.

== Description

#strong[gamstat]; retourne la moyenne et la variance de la loi gamma.


== Exemple

``````matlab
[m, v] = gamstat([1 2 3], [4 5 6]);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
