#import "../nelson_help.typ": *

= diff <linear_algebra:1_linear_systems.diff>

Différences et dérivées approximatives.

== Syntaxe

- #raw("Y = diff(X)");
- #raw("Y = diff(X, n)");
- #raw("Y = diff(X, n, dim)");

== Argument d'entrée

/ X: vector or matrix (real or single)
/ n: difference order: positive integer scalar or \[\]
/ dim: dimension: positive integer scalar

== Argument de sortie

/ Y: difference array: vector or matrix.

== Description

Si #strong[X]; est un vecteur de longueur#strong[n];, le résultat de #strong[diff(X)]; est un vecteur des premières différences#strong[X(2) - X(1), ..., X(n) - X(n-1)];.

 Si #strong[X]; est une matrice, le résultat de #strong[diff(X)]; est une matrice des différences de colonnes le long de la première dimension non-singleton.


== Exemple

``````matlab
h = .01; x = 0:h:pi;
X = sin(x.^2);
R = diff(X)
``````


== Voir aussi

#nlink(<data_analysis:sum>)[sum];, #nlink(<data_analysis:prod>)[prod];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
