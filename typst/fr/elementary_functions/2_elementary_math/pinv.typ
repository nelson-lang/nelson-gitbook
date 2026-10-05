#import "../nelson_help.typ": *

= pinv <elementary_functions:2_elementary_math.pinv>

Pseudo-inverse de Moore-Penrose

== Syntaxe

- #raw("y = pinv(A)");
- #raw("y = pinv(A, tol)");

== Argument d'entrée

/ A: matrice : matrice d'entrée
/ tol: scalaire : tolérance sur les valeurs singulières

== Argument de sortie

/ y: Pseudo-inverse de Moore-Penrose de la matrice A.

== Description

#strong[pinv]; renvoie la pseudo-inverse de Moore-Penrose de la matrice A.


== Exemple

``````matlab
A = [1, 2, 3; 4, 5, 6];
R = pinv(A)
R = pinv(A, 2)
``````


== Voir aussi

#nlink(<linear_algebra:1_linear_systems.inv>)[inv];, #nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
