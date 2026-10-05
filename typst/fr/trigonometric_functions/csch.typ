#import "nelson_help.typ": *

= csch <trigonometric_functions:csch>

Cosécante hyperbolique.

== Syntaxe

- #raw("res = csch(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[csch]; calcule la cosécante hyperbolique pour chaque élément de #strong[x];.


== Exemple

``````matlab
X = [3*pi, 2*pi, pi, 0];
R = csch(X)
``````


== Voir aussi

#nlink(<trigonometric_functions:cosh>)[cosh];, #nlink(<trigonometric_functions:sinh>)[sinh];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
