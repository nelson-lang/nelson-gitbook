#import "nelson_help.typ": *

= csc <trigonometric_functions:csc>

Cosécante d'un angle en radians.

== Syntaxe

- #raw("res = csc(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[csc]; calcule la cosécante de l'argument en radians pour chaque élément de #strong[x];.
== Exemple

``````matlab
R = csc(-pi+0.01:0.01:-0.01)
``````


== Voir aussi

#nlink(<trigonometric_functions:cscd>)[cscd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
