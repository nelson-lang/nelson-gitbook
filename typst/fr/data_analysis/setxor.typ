#import "nelson_help.typ": *

= setxor <data_analysis:setxor>

Ou exclusif ensembliste de deux tableaux.

== Syntaxe

- #raw("C = setxor(A, B)");
- #raw("[C, ia, ib] = setxor(A, B)");

== Argument d'entrée

/ A, B: Tableaux d'entree.

== Argument de sortie

/ C: Valeurs triees presentes dans un seul des deux tableaux.
/ ia, ib: Indices dans #strong[A]; et #strong[B];.

== Description

#strong[setxor(A, B)]; retourne les valeurs presentes dans #strong[A]; ou #strong[B];, mais pas dans les deux.


== Exemple

``````matlab
A = [5 7 1];
B = [3 1 1];
C = setxor(A, B)
``````


== Voir aussi

#nlink(<data_analysis:union>)[union];, #nlink(<data_analysis:intersect>)[intersect];, #nlink(<data_analysis:setdiff>)[setdiff];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
