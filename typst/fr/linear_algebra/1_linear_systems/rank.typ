#import "../nelson_help.typ": *

= rank <linear_algebra:1_linear_systems.rank>

Rang d'une matrice.

== Syntaxe

- #raw("r = rank(A)");
- #raw("r = rank(A, tol)");

== Argument d'entrée

/ A: matrice : double ou simple précision
/ tol: tolérance

== Argument de sortie

/ r: une valeur numérique : un scalaire.

== Description

#strong[rank(A)]; retourne le nombre de colonnes linéairement indépendantes d'une matrice (rang de la matrice).


== Exemple

``````matlab
X = rand(10, 10);
r = rank(X)
``````


== Voir aussi

#nlink(<linear_algebra:3_eigen_singular_values.svd>)[svd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
