#import "../nelson_help.typ": *

= shiftdim <elementary_functions:7_indexing_dimensions.shiftdim>

Décale les dimensions d'un tableau

== Syntaxe

- #raw("B = shiftdim(A, n)");
- #raw("B = shiftdim(A)");
- #raw("[B, m] = shiftdim(A)");

== Argument d'entrée

/ A: tableau d'entrée : vecteur, matrice ou tableau multidimensionnel.
/ n: nombre de positions : valeur entière.

== Argument de sortie

/ B: vecteur, matrice ou tableau multidimensionnel.
/ m: nombre de dimensions supprimées : entier positif ou nul.

== Description

#strong[shiftdim(A, n)]; réorganise les dimensions d'un tableau A de n positions.

 Plus précisément, lorsque n est un entier positif, les dimensions sont décalées vers la gauche, et lorsque n est un entier négatif, elles sont décalées vers la droite.


== Exemple

``````matlab
A = rand(2, 3, 4);
size(A)
% Shift the dimensions of array A by 2 positions to the left
B = shiftdim(A, 2)
``````


== Voir aussi

#nlink(<elementary_functions:7_indexing_dimensions.permute>)[permute];, #nlink(<elementary_functions:1_array_creation_shape.reshape>)[reshape];, #nlink(<elementary_functions:2_elementary_math.round>)[squeeze];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [version initiale],
)

// Auteur: Allan CORNET
