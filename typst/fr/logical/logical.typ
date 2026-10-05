#import "nelson_help.typ": *

= logical <logical:logical>

Convertit une valeur numérique en type logique.

== Syntaxe

- #raw("Y = logical(X)");

== Argument d'entrée

/ X: a numeric value.

== Argument de sortie

/ Y: a logical value.

== Description

#strong[logical]; convertit une valeur numérique en type logique.

 Une valeur non nulle est convertie en true et les zéros sont convertis en false.

 Les nombres complexes retournent une erreur.


== Exemple

``````matlab
A = eye(2, 2)
B = logical(A)
islogical(B)
``````


== Voir aussi

#nlink(<types:islogical>)[islogical];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
