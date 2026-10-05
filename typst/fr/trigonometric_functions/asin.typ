#import "nelson_help.typ": *

= asin <trigonometric_functions:asin>

Calcule le sinus inverse en radians pour chaque élément de x.

== Syntaxe

- #raw("res = asin(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[asin]; calcule le sinus inverse en radians pour chaque élément de #strong[x];.
== Exemple

``````matlab
A = eye(3, 3);
res = asin(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:sin>)[sin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
