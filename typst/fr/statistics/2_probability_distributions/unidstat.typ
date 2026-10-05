#import "../nelson_help.typ": *

= unidstat <statistics:2_probability_distributions.unidstat>

Moyenne et variance uniformes discretes

== Syntaxe

- #raw("m = unidstat(n)");
- #raw("[m, v] = unidstat(n)");

== Argument d'entrée

/ n: scalaire entier positif ou tableau : valeur maximale.

== Argument de sortie

/ m: moyennes.
/ v: variances.

== Description

#strong[unidstat]; calcule la moyenne et la variance de la loi uniforme discrete sur les entiers de 1 a #strong[n];.


== Exemple

``````matlab
[m, v] = unidstat([1 5 10]);
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
