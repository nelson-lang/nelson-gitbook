#import "nelson_help.typ": *

= acotd <trigonometric_functions:acotd>

Cotangente inverse d'un angle en degrés

== Syntaxe

- #raw("res = acotd(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[acotd]; calcule la cotangente inverse d'un angle pour chaque élément de #strong[x]; en degrés.
== Exemple

``````matlab
R = acotd([-i pi+i*pi/2 -1+i*4])
``````


== Voir aussi

#nlink(<trigonometric_functions:acot>)[acot];, #nlink(<trigonometric_functions:acoth>)[acoth];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
