#import "nelson_help.typ": *

= sinh <trigonometric_functions:sinh>

Calcule le sinus hyperbolique en radians pour chaque élément de x.

== Syntaxe

- #raw("res = sinh(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[sinh]; calcule le sinus hyperbolique en radians pour chaque élément de #strong[x];.
== Exemple

``````matlab
A = eye(3, 3);
res = sinh(A)
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
