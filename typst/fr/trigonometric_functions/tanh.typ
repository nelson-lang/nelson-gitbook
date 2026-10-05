#import "nelson_help.typ": *

= tanh <trigonometric_functions:tanh>

Calcule la tangente hyperbolique en radians pour chaque élément de x.

== Syntaxe

- #raw("res = tanh(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[tanh]; calcule la tangente hyperbolique en radians pour chaque élément de #strong[x];.
== Exemple

``````matlab
A = eye(3, 3);
res = tanh(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:atan>)[atan];, #nlink(<trigonometric_functions:atan>)[tanh];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
