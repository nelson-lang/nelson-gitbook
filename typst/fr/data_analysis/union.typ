#import "nelson_help.typ": *

= union <data_analysis:union>

Union ensembliste de deux tableaux.

== Syntaxe

- #raw("C = union(A, B)");
- #raw("[C, ia, ib] = union(A, B)");

== Argument d'entrée

/ A, B: Tableaux d'entrée.

== Argument de sortie

/ C: Valeurs triees presentes dans #strong[A]; ou #strong[B];.
/ ia, ib: Indices dans #strong[A]; et #strong[B];.

== Description

#strong[union(A, B)]; retourne l'ensemble trie des valeurs presentes dans au moins un des tableaux.


== Exemple

``````matlab
A = [5 7 1];
B = [3 1 1];
C = union(A, B)
``````


== Voir aussi

#nlink(<data_analysis:intersect>)[intersect];, #nlink(<data_analysis:setdiff>)[setdiff];, #nlink(<data_analysis:setxor>)[setxor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
