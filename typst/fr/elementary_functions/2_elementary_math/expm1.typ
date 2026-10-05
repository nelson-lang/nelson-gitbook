#import "../nelson_help.typ": *

= expm1 <elementary_functions:2_elementary_math.expm1>

Calcule exp(x) - 1.

== Syntaxe

- #raw("R = expm1(X)");

== Argument d'entrée

/ X: input array.

== Argument de sortie

/ R: Compute exp(x) - 1.

== Description

#strong[expm1]; calcule exp(X) - 1 element par element.


== Exemple

``````matlab
x = [-1 0 1];
R = expm1(x)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.exp>)[exp];, #nlink(<elementary_functions:2_elementary_math.log1p>)[log1p];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
