#import "../nelson_help.typ": *

= isequalto <elementary_functions:7_indexing_dimensions.isequalto>

Renvoie true si tous les arguments x1, x2, ... , xn sont égaux (même type, mêmes dimensions, mêmes valeurs ou NaN).

== Syntaxe

- #raw("res = isequalto(x1, x2)");
- #raw("res = isequalto(x1, x2, xn)");

== Argument d'entrée

/ x1: une valeur
/ x2: une valeur
/ xn: une valeur

== Argument de sortie

/ res: une valeur logique

== Description

#strong[isequalto]; renvoie true si x1 et x2 ont le même type, la même taille et les mêmes valeurs ; sinon, elle renvoie false.
== Exemple

``````matlab
A = eye(3, 3);
res = isequal(A, single(A))
res = isequalto(A, single(A))

``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.isequal>)[isequal];, #nlink(<elementary_functions:7_indexing_dimensions.isequaln>)[isequaln];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
