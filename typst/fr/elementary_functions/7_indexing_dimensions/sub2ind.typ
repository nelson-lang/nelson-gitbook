#import "../nelson_help.typ": *

= sub2ind <elementary_functions:7_indexing_dimensions.sub2ind>

Indices d'une matrice vers un indice linéaire

== Syntaxe

- #raw("ind = sub2ind(sz, row, col)");
- #raw("ind = sub2ind(sz, I1, I2, ..., In)");

== Argument d'entrée

/ sz: taille du tableau : vecteur d'entiers positifs.
/ row: indices de ligne.
/ col: indices de colonne.
/ I1, I2, ..., In: indices multidimensionnels.

== Argument de sortie

/ ind: indices linéaires.

== Description

#strong[sub2ind]; convertit des indices en indices linéaires.


== Exemple

``````matlab
row = [2 3 4 2];
col = [2 2 2 3];
sz = [3 3];
ind = sub2ind(sz, row, col)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.sub2ind>)[ind2sub];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
