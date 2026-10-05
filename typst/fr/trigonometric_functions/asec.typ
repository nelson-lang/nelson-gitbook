#import "nelson_help.typ": *

= asec <trigonometric_functions:asec>

Sécante inverse d'un angle en radians.

== Syntaxe

- #raw("res = asec(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[asec]; calcule la sécante inverse de l'argument en radians pour chaque élément de #strong[x];.
== Exemple

``````matlab
x = -pi:0.75:pi;
R = asec(x)
``````


== Voir aussi

#nlink(<trigonometric_functions:secd>)[secd];, #nlink(<trigonometric_functions:sec>)[sec];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
