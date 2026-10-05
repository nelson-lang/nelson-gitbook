#import "nelson_help.typ": *

= atan <trigonometric_functions:atan>

Calcule la tangente inverse en radians pour chaque élément de x.

== Syntaxe

- #raw("res = atan(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[atan]; calcule la tangente inverse en radians pour chaque élément de #strong[x];.
== Exemple

``````matlab
A = eye(3, 3);
res = atan(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:tan>)[tan];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
