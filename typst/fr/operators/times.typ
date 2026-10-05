#import "nelson_help.typ": *

= mtimes <operators:times>

Multiplication élément par élément, opérateur .\*

== Syntaxe

- #raw("C = times(A, B)");
- #raw("C = A .* B");

== Argument d'entrée

/ A: une variable
/ B: une variable

== Argument de sortie

/ C: résultat de A .\* B

== Description

#strong[C \= times(A, B)]; effectue la multiplication élément par élément : A .\* B.


== Exemples

``````matlab
times(3, 4)
3 .* 4
``````

``````matlab
M1 = [2 6 10; 4 8 70];
M2 = [-25 88 1; 23 29 41];
M1 .* M2
``````


== Voir aussi

#nlink(<operators:mtimes>)[mtimes];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
