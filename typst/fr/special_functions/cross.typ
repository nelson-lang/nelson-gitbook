#import "nelson_help.typ": *

= cross <special_functions:cross>

Produit vectoriel.

== Syntaxe

- #raw("R = cross(A, B)");
- #raw("R = cross(A, B, dim)");

== Argument d'entrée

/ A, B: tableaux numériques.
/ dim: scalaire entier positif : Dimension le long de laquelle opérer.

== Argument de sortie

/ R: Produit vectoriel.

== Description

#strong[R \= cross(A, B)]; retourne le produit vectoriel de #strong[A]; et #strong[B];.


== Bibliographie

https:\/\/en.wikipedia.org\/wiki\/Cross\_product

== Exemple

``````matlab
A = [1 2 3;4 5 6;7 8 9];
B = [9 8 7;6 5 4;3 2 1];
R = cross(A, B)
R = cross(A, B, 2)
``````


== Voir aussi

#nlink(<special_functions:dot>)[dot];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
