#import "nelson_help.typ": *

= isint64 <types:isint64>

Renvoie vrai si la variable var est un tableau d'entiers signés 64 bits.

== Syntaxe

- #raw("res = isint64(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isint64]; renvoie 1 logique si l'argument est un tableau d'entiers signés 64 bits et 0 logique sinon.


== Exemples

``````matlab
A = 3;
res = isint64(A)
``````

``````matlab
B = int64(3);
res = isint64(B)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<integer:int64>)[int64];, #nlink(<types:isinteger>)[isinteger];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
