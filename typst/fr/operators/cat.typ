#import "nelson_help.typ": *

= cat <operators:cat>

Concatène des tableaux.

== Syntaxe

- #raw("R = cat(dim, A, B)");
- #raw("R = cat(dim, A1, A2, ..., An)");

== Argument d'entrée

/ dim: Dimension sur laquelle opérer : entier positif scalaire.
/ A: variable : premier argument.
/ B: variable : deuxième argument.
/ A1, A2, ..., An: Liste d'arguments à concaténer

== Argument de sortie

/ R: tableau concaténé

== Description

#strong[R \= cat(dim, M1, M2, ... , MN)]; renvoie la concaténation de M1, M2, ... , MN le long de la dimension #strong[dim];.


== Exemple

``````matlab
A = eye(2, 2);
B = ones(2, 2);
C = cat(2, A, B)
``````


== Voir aussi

#nlink(<operators:vertcat>)[vertcat];, #nlink(<operators:horzcat>)[horzcat];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
