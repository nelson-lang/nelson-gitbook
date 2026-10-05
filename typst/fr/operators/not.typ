#import "nelson_help.typ": *

= not <operators:not>

négation logique, opérateur \~

== Syntaxe

- #raw("C = not(A)");
- #raw("C = ~A");

== Argument d'entrée

/ A: une variable

== Argument de sortie

/ C: résultat de \~A

== Description

#strong[C \= not(A)]; effectue la négation logique : \~A.


== Exemple

``````matlab
M = false(3, 3);
~M
``````


== Voir aussi

#nlink(<operators:or>)[or];, #nlink(<operators:any>)[any];, #nlink(<operators:all>)[all];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
