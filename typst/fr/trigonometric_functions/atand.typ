#import "nelson_help.typ": *

= atand <trigonometric_functions:atand>

Tangente inverse en degrés.

== Syntaxe

- #raw("res = atand(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[atand]; calcule la tangente inverse en degrés pour chaque élément de #strong[x];.
== Exemple

``````matlab
x = [-50 -20 0 20 50];
y = atand(x)
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
