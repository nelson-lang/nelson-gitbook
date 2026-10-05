#import "nelson_help.typ": *

= isfloat <types:isfloat>

Renvoie vrai si la variable var est une matrice de type single ou double.

== Syntaxe

- #raw("res = isfloat(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isfloat]; renvoie 1 logique (vrai) si l'argument est une matrice en simple ou double précision et 0 logique (faux) sinon.


== Exemples

``````matlab
A = 3;
res = isfloat(A)
``````

``````matlab
A = single(3);
res = isfloat(A)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<single:single>)[single];, #nlink(<types:isdouble>)[isdouble];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
