#import "nelson_help.typ": *

= asinh <trigonometric_functions:asinh>

Sinus hyperbolique inverse

== Syntaxe

- #raw("res = asinh(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[asinh]; calcule le sinus hyperbolique inverse en radians pour chaque élément de #strong[x];.
== Exemple

``````matlab
A = eye(3, 3);
res = asinh(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:asin>)[asin];, #nlink(<trigonometric_functions:sin>)[sin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
