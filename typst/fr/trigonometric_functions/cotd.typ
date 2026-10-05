#import "nelson_help.typ": *

= cotd <trigonometric_functions:cotd>

Cotangente de l'argument en degrés

== Syntaxe

- #raw("res = cotd(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[cotd]; calcule la cotangente de l'argument en degrés pour chaque élément de #strong[x];.
== Exemple

``````matlab
R = cotd(35 + 5i)
``````


== Voir aussi

#nlink(<trigonometric_functions:cot>)[cot];, #nlink(<trigonometric_functions:acot>)[acot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
