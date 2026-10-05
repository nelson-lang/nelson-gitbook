#import "nelson_help.typ": *

= acsc <trigonometric_functions:acsc>

Cosécante inverse en radians.

== Syntaxe

- #raw("res = acsc(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[acsc]; calcule la cosécante inverse de l'argument en radians pour chaque élément de #strong[x];.
== Exemple

``````matlab
R = acsc(3)
R = acsc(0.5)
``````


== Voir aussi

#nlink(<trigonometric_functions:cscd>)[cscd];, #nlink(<trigonometric_functions:csc>)[csc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
