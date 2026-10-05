#import "../nelson_help.typ": *

= mod <elementary_functions:2_elementary_math.mod>

Modulo après division.

== Syntaxe

- #raw("C = mod(A, B)");

== Argument d'entrée

/ A: une variable : dividende
/ B: une variable : diviseur

== Argument de sortie

/ C: résultat de mod(A, B)

== Description

#strong[C \= mod(A, B)]; calcule le modulo de A et B, c'est-à-dire : A - B .\* floor (A .\/ B).

 Cette fonction gère également les valeurs négatives.


== Exemple

``````matlab
 mod (-1, 3)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.rem>)[rem];, #nlink(<elementary_functions:2_elementary_math.floor>)[floor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
