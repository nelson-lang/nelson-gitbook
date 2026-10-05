#import "nelson_help.typ": *

= acosh <trigonometric_functions:acosh>

Cosinus hyperbolique inverse.

== Syntaxe

- #raw("res = acosh(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[acosh]; calcule le cosinus hyperbolique inverse.


== Exemple

``````matlab
A =  [1+2i, 2, -3];
res = acosh(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:cosh>)[cosh];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
