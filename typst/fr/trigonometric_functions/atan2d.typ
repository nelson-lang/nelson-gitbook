#import "nelson_help.typ": *

= atan2d <trigonometric_functions:atan2d>

Tangente inverse à quatre quadrants en degrés.

== Syntaxe

- #raw("d = atan2d(y, x)");

== Argument d'entrée

/ y: une valeur numérique
/ x: une valeur numérique

== Argument de sortie

/ d: a numeric value

== Description

#strong[d \= atan2d(y, x)]; retourne la tangente inverse à quatre quadrants (tan-1) de #strong[y]; et #strong[x];, qui doivent être réels.


== Exemple

``````matlab
x = [1 0 -1 0];
y = [0 1 0 -1];
d = atan2d(y, x)
``````


== Voir aussi

#nlink(<trigonometric_functions:tand>)[tand];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
