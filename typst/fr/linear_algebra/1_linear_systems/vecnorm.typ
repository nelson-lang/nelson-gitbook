#import "../nelson_help.typ": *

= vecnorm <linear_algebra:1_linear_systems.vecnorm>

Norme par vecteur.

== Syntaxe

- #raw("N = vecnorm(A)");
- #raw("N = vecnorm(A, p)");
- #raw("N = vecnorm(A, p, dim)");

== Argument d'entrée

/ A: vector, matrix or multidimensional array
/ p: Norm type: 2 (default), a positive scalar, or Inf.
/ dim: positive integer scalar

== Argument de sortie

/ n: norm: scalar or vector

== Description

#strong[vecnorm]; calcule la norme 2 ou norme Euclidienne du tableau d'entrée #strong[A];

 Si #strong[A]; est un vecteur, #strong[vecnorm]; retourne la norme du vecteur.

 Si #strong[A]; est une matrice, #strong[vecnorm]; retourne la norme de chaque colonne.

 Pour les tableaux multidimensionnels, #strong[vecnorm]; retourne la norme le long de la première dimension du tableau dont la taille n'est pas égale à 1.

 Pour calculer la norme p généralisée du vecteur, utilisez la syntaxe #strong[N \= vecnorm(A, p)];.

 Pour opérer le long d'une dimension spécifique dim, la fonction peut être appelée comme #strong[N \= vecnorm(A, p, dim)];.

 Dans ce cas, la taille de la dimension spécifiée devient 1, tandis que les tailles des autres dimensions restent inchangées.


== Exemple

``````matlab
A = [1, 2, 3; 4, 5, 6; 7, 8, 9];
n = vecnorm(A)
n = vecnorm(A, 2, 2)
n = vecnorm(A, 1)

``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.norm>)[norm];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [version initiale],
)

// Auteur: Allan CORNET
