#import "nelson_help.typ": *

= isinteger <types:isinteger>

Renvoie vrai si la variable var est un tableau de type entier.

== Syntaxe

- #raw("res = isinteger(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isinteger]; renvoie 1 logique si l'argument est un tableau de type entier (int8, int16, ...) et 0 logique sinon.


== Exemples

``````matlab
A = 3;
res = isinteger(A)
``````

``````matlab
B = uint8(3);
res = isinteger(B)
``````

``````matlab
A = single([3, i]);
res = isinteger(A)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<types:isint8>)[isint8];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
