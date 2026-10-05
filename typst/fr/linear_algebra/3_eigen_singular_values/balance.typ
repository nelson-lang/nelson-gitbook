#import "../nelson_help.typ": *

= balance <linear_algebra:3_eigen_singular_values.balance>

Mise à l'échelle diagonale pour améliorer la précision des valeurs propres.

== Syntaxe

- #raw("B = balance(A)");
- #raw("B = balance(A,'noperm')");
- #raw("[T, B] = balance(A)");
- #raw("[S, P, B] = balance(A)");

== Argument d'entrée

/ A: une matrice carrée, finie (simple ou double précision).

== Argument de sortie

/ B: matrice équilibrée.
/ T: transformation de similarité : réarrange les éléments d'une matrice diagonale contenant des puissances entières de deux afin de minimiser l'impact des erreurs d'arrondi.
/ S: vecteur d'échelle
/ P: vecteur de permutation

== Description

#strong[B \= balance(A)]; retourne la matrice équilibrée #strong[B];.

 #strong[B \= balance(A, 'noperm')]; met à l'échelle #strong[A]; sans permuter ses lignes et colonnes.


== Fonction(s) utilisée(s)

LAPACK dgebal, LAPACK sgebal, LAPACK zgebal, LAPACK cgebal

== Exemple

``````matlab
A = [10  1000  100000; .1  10  1000; .001  .1  10]
F = balance(A)

``````


== Voir aussi

#nlink(<linear_algebra:3_eigen_singular_values.eig>)[eig];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
