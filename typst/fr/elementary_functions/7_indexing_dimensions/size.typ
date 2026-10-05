#import "../nelson_help.typ": *

= size <elementary_functions:7_indexing_dimensions.size>

Taille d'un objet.

== Syntaxe

- #raw("s = size(X)");
- #raw("sdim = size(X, dim)");
- #raw("vec = size(X, dims)");
- #raw("[r, c] = size(X)");
- #raw("[s1, ... , sn] = size(X)");

== Argument d'entrée

/ X: une variable
/ dim: une variable : un entier positif pour obtenir la dimension dim.
/ dims: une variable : un vecteur d'entiers positifs pour obtenir les dimensions indiquées.

== Argument de sortie

/ s: un vecteur ligne dont les éléments contiennent la longueur de la dimension correspondante de X.
/ sdim: la longueur de la dimension dim.
/ vec: longueur des dimensions dims.
/ \[r, c\]: nombre de lignes, et produit des dimensions restantes (nombre de colonnes pour une matrice).
/ \[s1, ... , sn\]: longueur de chaque dimension ; sn est le produit des dimensions restantes, et les sorties en plus de ndims(X) valent 1.

== Exemples

``````matlab
X = rand(3, 4, 5, 6);
size(X)
size(X, 3)
size(X, [2 4])
[r, c] =size(X)
[s1, s2, s3, s4] = size(X)
``````

``````matlab
size(cell(4,3))
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.length>)[length];, #nlink(<elementary_functions:7_indexing_dimensions.ndims>)[ndims];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
