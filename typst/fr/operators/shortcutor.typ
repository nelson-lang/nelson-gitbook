#import "nelson_help.typ": *

= shortcutor <operators:shortcutor>

Opérateur OR à court-circuit, ||

== Syntaxe

- #raw("C = A || B");

== Argument d'entrée

/ A: une variable
/ B: une variable

== Argument de sortie

/ C: résultat de A || B

== Description

#strong[C \= A || B]; effectue une opération logique #strong[OR]; : le second opérande n'est évalué que lorsque le résultat ne peut pas être déterminé par le premier opérande.


== Exemple

``````matlab
A = [6 8 0; 0 3 89; 15 0 0]
B = [66 56 0; 11 33 55; -11 0 0]
C = A || B

``````


== Voir aussi

#nlink(<operators:or>)[or];, #nlink(<operators:shortcutand>)[& &];, #nlink(<logical:xor>)[xor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
