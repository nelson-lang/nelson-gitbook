#import "../nelson_help.typ": *

= binostat <statistics:2_probability_distributions.binostat>

Moyenne et variance binomiales

== Syntaxe

- #raw("[m, v] = binostat(n, p)");

== Argument d'entrée

/ n: entier non negatif scalaire ou tableau : nombre d'essais.
/ p: scalaire ou tableau dans l'intervalle \[0, 1\] : probabilite de succes.

== Argument de sortie

/ m: tableau : moyennes.
/ v: tableau : variances.

== Description

#strong[binostat]; retourne la moyenne et la variance de la loi binomiale.


== Exemple

``````matlab
[m, v] = binostat([10 20], [0.25 0.5]);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
