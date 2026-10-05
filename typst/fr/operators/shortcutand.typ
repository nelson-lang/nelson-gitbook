#import "nelson_help.typ": *

= shortcutand <operators:shortcutand>

Opérateur AND à court-circuit, & &

== Syntaxe

- #raw("C = A & & B");

== Argument d'entrée

/ A: a variable
/ B: a variable

== Argument de sortie

/ C: result of A & & B

== Description

#strong[C \= A & & B]; performs a logical#strong[AND]; operation, the second operand is evaluated only when the result is not fully determined by the first operand.


== Exemple

``````matlab
A = [6 8 0; 0 3 89; 15 0 0]
B = [66 56 0; 11 33 55; -11 0 0]
C = A && B
``````


== Voir aussi

#nlink(<operators:and>)[and];, #nlink(<operators:shortcutor>)[||];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
