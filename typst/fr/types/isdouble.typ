#import "nelson_help.typ": *

= isdouble <types:isdouble>

Renvoie vrai si la variable var est une matrice de type double.

== Syntaxe

- #raw("res = isdouble(var)");

== Argument d'entrée

/ var: une variable

== Argument de sortie

/ res: un logique : vrai ou faux

== Description

#strong[isdouble]; renvoie 1 logique (vrai) si l'argument est une matrice de type double et 0 logique (faux) sinon.


== Exemples

``````matlab
A = 3;
res = isdouble(A)
``````

``````matlab
A = single(3);
res = isdouble(A)
``````

``````matlab
A = single([3, i]);
res = isdouble(A)
``````

``````matlab
A = [3, i];
res = isdouble(A)
``````


== Voir aussi

#nlink(<types:isa>)[isa];, #nlink(<single:single>)[single];, #nlink(<double:double>)[double];, #nlink(<types:isfloat>)[isfloat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
