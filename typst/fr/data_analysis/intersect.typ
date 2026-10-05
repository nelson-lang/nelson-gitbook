#import "nelson_help.typ": *

= intersect <data_analysis:intersect>

Intersection ensembliste de deux tableaux.

== Syntaxe

- #raw("C = intersect(A, B)");
- #raw("[C, ia, ib] = intersect(A, B)");

== Argument d'entrée

/ A, B: Tableaux d'entree.

== Argument de sortie

/ C: Valeurs triees communes a #strong[A]; et #strong[B];.
/ ia, ib: Indices dans #strong[A]; et #strong[B];.

== Description

#strong[intersect(A, B)]; retourne les valeurs triees presentes dans les deux tableaux.


== Exemple

``````matlab
A = [5 7 1];
B = [3 1 1];
C = intersect(A, B)
``````


== Voir aussi

#nlink(<data_analysis:union>)[union];, #nlink(<data_analysis:setdiff>)[setdiff];, #nlink(<data_analysis:setxor>)[setxor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
