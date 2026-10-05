#import "nelson_help.typ": *

= acos <trigonometric_functions:acos>

Calcule le cosinus inverse en radians pour chaque élément de x.

== Syntaxe

- #raw("res = acos(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[acos]; calcule le cosinus inverse en radians pour chaque élément de #strong[x];.
== Exemple

``````matlab
A = eye(3, 3);
res = acos(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:cos>)[cos];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
