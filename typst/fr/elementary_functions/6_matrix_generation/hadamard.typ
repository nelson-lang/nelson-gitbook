#import "../nelson_help.typ": *

= hadamard <elementary_functions:6_matrix_generation.hadamard>

Matrice de Hadamard

== Syntaxe

- #raw("H = hadamard(n)");
- #raw("H = hadamard(n, classname)");

== Argument d'entrée

/ n: entier scalaire : ordre.
/ classname: vecteur de caractères ou chaîne scalaire : nom de la classe désirée ('double' par défaut).

== Argument de sortie

/ H: Matrice de Hadamard.

== Description

#strong[H \= hadamard(n)]; renvoie la matrice de Hadamard d'ordre #strong[n];.


== Bibliographie

https:\/\/en.wikipedia.org\/wiki\/Hadamard\_matrix , https:\/\/mathworld.wolfram.com\/HadamardMatrix.html

== Exemple

``````matlab
H = hadamard(4)
``````


== Voir aussi

#nlink(<elementary_functions:6_matrix_generation.hankel>)[hankel];, #nlink(<elementary_functions:6_matrix_generation.toeplitz>)[toeplitz];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
