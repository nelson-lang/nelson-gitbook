#import "nelson_help.typ": *

= asech <trigonometric_functions:asech>

Sécante hyperbolique inverse d'un angle en radians.

== Syntaxe

- #raw("res = asech(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[asech]; calcule la sécante hyperbolique inverse de l'argument en radians pour chaque élément de #strong[x];.
== Exemple

``````matlab
x = -pi:0.75:pi;
R = asech(x)
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
