#import "nelson_help.typ": *

= diag <constructors_functions:diag>

Obtenir les éléments diagonaux d'une matrice ou créer une matrice diagonale.

== Syntaxe

- #raw("D = diag(V)");
- #raw("X = diag(A)");
- #raw("D = diag(V, k)");
- #raw("X = diag(A, k)");

== Argument d'entrée

/ V: Éléments diagonaux
/ A: Matrice d'entrée

== Argument de sortie

/ D: vecteur
/ X: matrice

== Description

#strong[diag]; retourne les éléments diagonaux d'une matrice ou crée une matrice diagonale.


== Exemple

``````matlab
diag(eye(3))
diag(diag(eye(3)))
``````


== Voir aussi

#nlink(<constructors_functions:ones>)[ones];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
