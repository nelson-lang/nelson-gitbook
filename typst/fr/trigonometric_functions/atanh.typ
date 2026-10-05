#import "nelson_help.typ": *

= atanh <trigonometric_functions:atanh>

Calcule la tangente hyperbolique inverse.

== Syntaxe

- #raw("res = atanh(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[atanh]; calcule la tangente hyperbolique inverse.


== Exemple

``````matlab
A =  [1+2i, 2, -3];
res = atanh(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:tanh>)[tanh];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
