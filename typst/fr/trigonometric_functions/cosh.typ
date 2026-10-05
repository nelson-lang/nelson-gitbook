#import "nelson_help.typ": *

= cosh <trigonometric_functions:cosh>

Calcule le cosinus hyperbolique en radians pour chaque élément de x.

== Syntaxe

- #raw("res = cosh(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[cosh]; calcule le cosinus hyperbolique en radians pour chaque élément de #strong[x];.
== Exemple

``````matlab
A = eye(3, 3);
res = cosh(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:acos>)[acos];, #nlink(<trigonometric_functions:cos>)[cos];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
