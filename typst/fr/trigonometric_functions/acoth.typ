#import "nelson_help.typ": *

= acoth <trigonometric_functions:acoth>

Cotangente hyperbolique inverse.

== Syntaxe

- #raw("res = acoth(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[acoth]; calcule la cotangente hyperbolique inverse.


== Exemple

``````matlab
A =  [1+2i, 2, -3];
res = acoth(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:coth>)[coth];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
