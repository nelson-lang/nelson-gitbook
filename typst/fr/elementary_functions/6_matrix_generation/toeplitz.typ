#import "../nelson_help.typ": *

= toeplitz <elementary_functions:6_matrix_generation.toeplitz>

Matrice de Toeplitz

== Syntaxe

- #raw("T = toeplitz(c, r)");
- #raw("T = toeplitz(r)");

== Argument d'entrée

/ c: un scalaire ou un vecteur : colonne de la matrice de Toeplitz.
/ r: un scalaire ou un vecteur : ligne de la matrice de Toeplitz.

== Argument de sortie

/ T: matrice de Toeplitz.

== Description

#strong[T \= toeplitz(c, r)]; renvoie la matrice de Toeplitz dont la première ligne est#strong[r]; et la première colonne est #strong[c];.

 #strong[T \= toeplitz(c)]; renvoie la matrice de Toeplitz symétrique.


== Bibliographie

https:\/\/en.wikipedia.org\/wiki\/Toeplitz\_matrix

== Exemple

``````matlab
T = toeplitz(1:5, 1:2:7)
``````


== Voir aussi

#nlink(<elementary_functions:6_matrix_generation.hankel>)[hankel];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
