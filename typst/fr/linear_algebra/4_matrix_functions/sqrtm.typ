#import "../nelson_help.typ": *

= sqrtm <linear_algebra:4_matrix_functions.sqrtm>

Calcule la racine carrée matricielle d'une matrice carrée.

== Syntaxe

- #raw("res = sqrtm(x)");

== Argument d'entrée

/ x: une valeur numérique : scalaire ou matrice carrée (double ou simple précision)

== Argument de sortie

/ res: une valeur numérique : une matrice carrée

== Description

#strong[sqrtm(x)]; calcule la racine carrée matricielle de x.


== Exemple

``````matlab
A = eye(3, 3);
res = sqrtm(A)
res = sqrtm(A+i)
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
