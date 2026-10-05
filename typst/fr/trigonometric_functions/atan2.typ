#import "nelson_help.typ": *

= atan2 <trigonometric_functions:atan2>

Calcule la tangente inverse à quatre quadrants.

== Syntaxe

- #raw("res = atan2(y, x)");

== Argument d'entrée

/ y: une valeur numérique (double ou simple réel)
/ x: une valeur numérique (double ou simple réel)

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[atan2]; calcule la tangente inverse à quatre quadrants.
== Exemple

``````matlab
atan2(1, 0)
``````


== Voir aussi

#nlink(<trigonometric_functions:atan>)[atan];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
