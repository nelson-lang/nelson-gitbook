#import "../nelson_help.typ": *

= planerot <linear_algebra:2_decompositions.planerot>

Rotation plane de Givens.

== Syntaxe

- #raw("[G, Y] = planerot(X)");

== Argument d'entrée

/ X: two-element column vector.

== Argument de sortie

/ G: 2 by 2 orthogonal matrix.
/ Y: Y \= G \* X with Y(2) \= 0.

== Description

#strong[\[G, Y\] \= planerot(X)]; calcule la matrice de rotation de Givens pour le vecteur colonne à deux éléments#strong[X];.


== Exemple

``````matlab
X = [4; 5];
[G, X] = planerot(X)

``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.norm>)[norm];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
