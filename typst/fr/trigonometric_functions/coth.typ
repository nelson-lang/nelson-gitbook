#import "nelson_help.typ": *

= coth <trigonometric_functions:coth>

Cotangente hyperbolique.

== Syntaxe

- #raw("res = coth(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[coth]; calcule la cotangente hyperbolique pour chaque élément de #strong[x];.


== Exemple

``````matlab
X = [3*pi, 2*pi, pi, 0];
R = coth(X)
``````


== Voir aussi

#nlink(<trigonometric_functions:tanh>)[tanh];, #nlink(<trigonometric_functions:cot>)[cot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
