#import "nelson_help.typ": *

= acsch <trigonometric_functions:acsch>

Cosécante hyperbolique inverse.

== Syntaxe

- #raw("res = acsch(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[acsch]; calcule la cosécante hyperbolique inverse pour chaque élément de #strong[x];.
== Exemple

``````matlab
X = [3*pi, 2*pi, pi, 0];
R = acsch(X)
``````


== Voir aussi

#nlink(<trigonometric_functions:csch>)[csch];, #nlink(<trigonometric_functions:sinh>)[sinh];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
