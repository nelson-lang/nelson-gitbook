#import "../nelson_help.typ": *

= ind2sub <elementary_functions:7_indexing_dimensions.ind2sub>

Convertir un indice linéaire en indices de sous-script

== Syntaxe

- #raw("[row, col] = ind2sub(sz, ind)");
- #raw("[I1, I2, ..., In] = ind2sub(sz, ind)");

== Argument d'entrée

/ sz: taille du tableau : vecteur d'entiers positifs.
/ ind: indices linéaires.

== Argument de sortie

/ row: row subscripts.
/ col: column subscripts.
/ I1, I2, ..., In: multidimensional subscripts.

== Description

#strong[ind2sub]; convertit des indices linéaires en indices de sous-scripts pour un tableau de taille #strong[S];.


== Exemple

``````matlab
ind = [4 5 6 7];
sz = [4 4];
[row,col] = ind2sub(sz,ind)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.sub2ind>)[sub2ind];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
