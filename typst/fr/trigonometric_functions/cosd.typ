#import "nelson_help.typ": *

= cosd <trigonometric_functions:cosd>

Calcule le cosinus en degrés pour chaque élément de x.

== Syntaxe

- #raw("res = cosd(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[cosd]; calcule le cosinus en degrés pour chaque élément de #strong[x];.


== Exemple

``````matlab
A = [0 30 45 60 90 360];;
res = cosd(A)
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
