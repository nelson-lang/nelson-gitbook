#import "nelson_help.typ": *

= and <operators:and>

opérateur logique 'AND', &

== Syntaxe

- #raw("C = and(A, B)");
- #raw("C = A & B");

== Argument d'entrée

/ A: une variable
/ B: une variable

== Argument de sortie

/ C: résultat de A & B

== Description

#strong[C \= and(A, B)]; effectue une opération logique #strong[AND];.


== Exemple

``````matlab
A = [6 8 0; 0 3 89; 15 0 0]
B = [66 56 0; 11 33 55; -11 0 0]
C = A & B
D = and(B, A)
C == D
``````


== Voir aussi

#nlink(<operators:or>)[or];, #nlink(<logical:xor>)[xor];, #nlink(<operators:all>)[all];, #nlink(<operators:any>)[any];, #nlink(<operators:not>)[not];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
