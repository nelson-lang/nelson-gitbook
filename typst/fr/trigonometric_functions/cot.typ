#import "nelson_help.typ": *

= cot <trigonometric_functions:cot>

Cotangente d'un angle en radians

== Syntaxe

- #raw("res = cot(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[cot]; calcule la cotangente d'un angle pour chaque élément de #strong[x];.


== Exemple

``````matlab
R = cot([-i pi+i*pi/2 -1+i*4])
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
