#import "../nelson_help.typ": *

= chol <linear_algebra:2_decompositions.chol>

Factorisation de Cholesky.

== Syntaxe

- #raw("F = chol(A)");

== Argument d'entrée

/ A: une matrice : carrée et définie positive (symétrique définie positive).

== Argument de sortie

/ F: Cholesky factor.

== Description

#strong[F \= chol(A)]; factorise la matrice symétrique définie positive #strong[A]; en une matrice triangulaire supérieure #strong[F]; telle que #strong[A \= F' \* F];.

 Les matrices sparse single et sparse single complexes definies positives sont prises en charge. Le facteur retourne conserve le stockage sparse et la precision de l'entree.


== Exemples

``````matlab
A = [10 0 10; 0 20 0; 10 0 30];
F = chol(A)

``````

Factorisation Cholesky sparse single complexe.

``````matlab
A = sparse(single([4 1i; -1i 3]));
R = chol(A)
``````


== Voir aussi

#nlink(<linear_algebra:1_linear_systems.det>)[det];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [prise en charge des matrices sparse single et sparse single complexes.],
)

// Auteur: Allan CORNET
