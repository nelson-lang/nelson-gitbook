#import "nelson_help.typ": *

= isint32 <types:isint32>

Renvoie vrai si la variable var est un tableau d'entiers signés 32 bits.

== Syntaxe

- #raw("res = isint32(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isint32]; renvoie 1 logique si l'argument est un tableau d'entiers signés 32 bits et 0 logique sinon.


== Exemples

``````matlab
A = 3;
res = isint32(A)
``````

``````matlab
B = int32(3);
res = isint32(B)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<integer:int32>)[int32];, #nlink(<types:isinteger>)[isinteger];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
