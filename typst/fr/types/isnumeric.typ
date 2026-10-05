#import "nelson_help.typ": *

= isnumeric <types:isnumeric>

Renvoie vrai si la variable var est un tableau numérique.

== Syntaxe

- #raw("res = isnumeric(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isnumeric]; renvoie 1 logique si l'argument est un tableau numérique et 0 logique sinon.

 Liste des types numériques :

 #strong[single]; : simple précision

 #strong[double]; : double précision

 #strong[int8]; : entier signé 8 bits

 #strong[int16]; : entier signé 16 bits

 #strong[int32]; : entier signé 32 bits

 #strong[int64]; : entier signé 64 bits

 #strong[uint8]; : entier non signé 8 bits

 #strong[uint16]; : entier non signé 16 bits

 #strong[uint32]; : entier non signé 32 bits

 #strong[uint64]; : entier non signé 64 bits


== Exemples

``````matlab
A = 1;
res = isnumeric(A)
``````

``````matlab
B = single(1+i);
res = isnumeric(B)
``````

``````matlab
C = logical(1);
res = isnumeric(C)
``````


== Voir aussi

#nlink(<types:islogical>)[islogical];, #nlink(<types:isinteger>)[isinteger];, #nlink(<types:isdouble>)[isdouble];, #nlink(<types:issingle>)[issingle];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
