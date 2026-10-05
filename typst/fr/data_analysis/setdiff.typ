#import "nelson_help.typ": *

= setdiff <data_analysis:setdiff>

Difference ensembliste de deux tableaux.

== Syntaxe

- #raw("C = setdiff(A, B)");
- #raw("[C, ia] = setdiff(A, B)");

== Argument d'entrée

/ A, B: Tableaux d'entree.

== Argument de sortie

/ C: Valeurs triees presentes dans #strong[A]; et absentes de #strong[B];.
/ ia: Indices dans #strong[A];.

== Description

#strong[setdiff(A, B)]; retourne les valeurs triees presentes dans #strong[A]; mais pas dans #strong[B];.


== Exemple

``````matlab
A = [5 7 1];
B = [3 1 1];
C = setdiff(A, B)
``````


== Voir aussi

#nlink(<data_analysis:union>)[union];, #nlink(<data_analysis:intersect>)[intersect];, #nlink(<data_analysis:setxor>)[setxor];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
