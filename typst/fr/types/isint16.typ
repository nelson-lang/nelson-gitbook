#import "nelson_help.typ": *

= isint16 <types:isint16>

Renvoie vrai si la variable var est un tableau d'entiers signés 16 bits.

== Syntaxe

- #raw("res = isint16(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isint16]; renvoie 1 logique si l'argument est un tableau d'entiers signés 16 bits et 0 logique sinon.


== Exemples

``````matlab
A = 3;
res = isint16(A)
``````

``````matlab
B = int16(3);
res = isint16(B)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<integer:int16>)[int16];, #nlink(<types:isinteger>)[isinteger];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
