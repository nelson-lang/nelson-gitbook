#import "nelson_help.typ": *

= isuint64 <types:isuint64>

Renvoie vrai si la variable var est un tableau d'entiers non signés 64 bits.

== Syntaxe

- #raw("res = isuint64(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isuint64]; renvoie 1 logique si l'argument est un tableau d'entiers non signés 64 bits et 0 logique sinon.
== Exemples

``````matlab
A = 3;
res = isuint64(A)
``````

``````matlab
B = uint64(3);
res = isuint64(B)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<integer:uint64>)[uint64];, #nlink(<types:isinteger>)[isinteger];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
