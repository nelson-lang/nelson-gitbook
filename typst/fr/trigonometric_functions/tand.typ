#import "nelson_help.typ": *

= tand <trigonometric_functions:tand>

Calcule la tangente en degrés pour chaque élément de x.

== Syntaxe

- #raw("res = tand(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[tand]; calcule la tangente en degrés pour chaque élément de #strong[x];.


== Exemple

``````matlab
A = [0 30 45 60 90 360];
res = tand(A)
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
