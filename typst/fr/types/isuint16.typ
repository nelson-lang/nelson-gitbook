#import "nelson_help.typ": *

= isuint16 <types:isuint16>

Renvoie vrai si la variable var est un tableau d'entiers non signés 16 bits.

== Syntaxe

- #raw("res = isuint16(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isuint16]; renvoie 1 logique si l'argument est un tableau d'entiers non signés 16 bits et 0 logique sinon.
== Exemples

``````matlab
A = 3;
res = isuint16(A)
``````

``````matlab
B = uint16(3);
res = isuint16(B)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<integer:uint16>)[uint16];, #nlink(<types:isinteger>)[isinteger];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
