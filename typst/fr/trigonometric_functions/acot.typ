#import "nelson_help.typ": *

= acot <trigonometric_functions:acot>

Cotangente inverse d'un angle en radians

== Syntaxe

- #raw("res = acot(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[acot]; calcule la cotangente inverse d'un angle pour chaque élément de #strong[x];.
== Exemple

``````matlab
R = acot([-i pi+i*pi/2 -1+i*4])
``````


== Voir aussi

#nlink(<trigonometric_functions:coth>)[coth];, #nlink(<trigonometric_functions:acoth>)[acoth];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
