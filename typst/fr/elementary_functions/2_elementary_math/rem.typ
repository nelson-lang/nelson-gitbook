#import "../nelson_help.typ": *

= rem <elementary_functions:2_elementary_math.rem>

Reste après division.

== Syntaxe

- #raw("C = rem(A, B)");

== Argument d'entrée

/ A: une variable : dividende
/ B: une variable : diviseur

== Argument de sortie

/ C: résultat de rem(A, B)

== Description

#strong[C \= rem(A, B)]; calcule le reste de A et B, c'est-à-dire : A - fix(A .\/ B) .\* B.

 Cette fonction gère également les valeurs négatives.

 mod(A, 0) \= A , tandis que rem(A, 0) \= NaN.

 mod(A, B) a le signe de B, tandis que rem(A, B) a le signe de A.

 mod et rem sont égaux si A et B ont le même signe.


== Exemple

``````matlab
 rem (-1, 3)
mod(-1, 3)
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.rem>)[mod];, #nlink(<elementary_functions:2_elementary_math.floor>)[floor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
