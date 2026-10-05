#import "nelson_help.typ": *

= sec <trigonometric_functions:sec>

Sécante d'un angle en radians.

== Syntaxe

- #raw("res = sec(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[sec]; calcule la sécante de l'argument en radians pour chaque élément de #strong[x];.
== Exemple

``````matlab
x = -pi:0.75:pi;
R = sec(x)
``````


== Voir aussi

#nlink(<trigonometric_functions:secd>)[secd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
