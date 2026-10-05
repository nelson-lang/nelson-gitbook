#import "nelson_help.typ": *

= bitor <operators:bitor>

Opération OR bit à bit

== Syntaxe

- #raw("C = bitor(A, B)");
- #raw("C = bitor(A, B, assumedtype)");

== Argument d'entrée

/ A: variable : double, logical, integer
/ B: variable : double, logical, integer
/ assumedtype: 'int64', 'int32', 'int16', 'int8', 'uint64', 'uint32', 'uint16' ou 'uint8'.

== Argument de sortie

/ C: Résultat de l'opération OR bit à bit

== Description

#strong[C \= bitor(A, B)]; returns the bit-wise OR of #strong[A]; and #strong[B];.


== Exemple

``````matlab
A = uint16([0 1; 0 1]);
B = uint16([0 0; 1 1]);
R = bitor(A, B)

``````


== Voir aussi

#nlink(<operators:bitand>)[bitand];, #nlink(<operators:bitxor>)[bitxor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
