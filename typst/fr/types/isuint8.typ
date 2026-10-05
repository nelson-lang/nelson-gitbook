#import "nelson_help.typ": *

= isuint8 <types:isuint8>

Renvoie vrai si la variable var est un tableau d'entiers non signés 8 bits.

== Syntaxe

- #raw("res = isuint8(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isuint8]; renvoie 1 logique si l'argument est un tableau d'entiers non signés 8 bits et 0 logique sinon.
== Exemples

``````matlab
A = 3;
res = isuint8(A)
``````

``````matlab
B = uint8(3);
res = isuint8(B)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<integer:uint8>)[uint8];, #nlink(<types:isinteger>)[isinteger];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
