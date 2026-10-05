#import "../nelson_help.typ": *

= orth <linear_algebra:1_linear_systems.orth>

Base orthonormée de l'espace image d'une matrice.

== Syntaxe

- #raw("O = orth(A)");
- #raw("O = orth(A, tol)");

== Argument d'entrée

/ A: matrice d'entrée
/ tol: une valeur numérique : scalaire, tolérance sur la valeur singulière

== Argument de sortie

/ O: nombre réel ou complexe (double ou simple précision).

== Description

#strong[O \= orth(A)]; retourne une base orthonormée de l'image (range) de #strong[A];.


== Exemple

``````matlab
M = [10 -20 40; -50 20 0; 10 0 30]
O = orth(M)

``````


== Voir aussi

#nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];, #nlink(<linear_algebra:1_linear_systems.rank>)[rank];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
