#import "nelson_help.typ": *

= isint8 <types:isint8>

Renvoie vrai si la variable var est un tableau d'entiers signés 8 bits.

== Syntaxe

- #raw("res = isint8(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isint8]; renvoie 1 logique si l'argument est un tableau d'entiers signés 8 bits et 0 logique sinon.


== Exemples

``````matlab
A = 3;
res = isint8(A)
``````

``````matlab
B = int8(3);
res = isint8(B)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<integer:int8>)[int8];, #nlink(<types:isinteger>)[isinteger];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
