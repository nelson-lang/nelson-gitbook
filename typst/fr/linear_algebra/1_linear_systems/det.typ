#import "../nelson_help.typ": *

= det <linear_algebra:1_linear_systems.det>

Déterminant d'une matrice.

== Syntaxe

- #raw("res = det(x)");

== Argument d'entrée

/ x: une valeur numérique : scalaire ou matrice carrée (double ou simple précision)

== Argument de sortie

/ res: real or complex number (double or single), the determinant base 10.

== Description

#strong[res \= det(x)]; retourne le déterminant de la matrice carrée x.

 Les matrices sparse single et sparse single complexes sont prises en charge. Le resultat conserve la precision single lorsque l'entree est single.


== Exemples

``````matlab
A = [10 -20 40; -50 20 0; 10 0 30]
D = det(A)

``````

Determinant d'une matrice sparse single.

``````matlab
A = sparse(single([4 1; 2 3]));
D = det(A)
``````


== Voir aussi

#nlink(<linear_algebra:5_matrix_properties.rcond>)[rcond];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [prise en charge des matrices sparse single et sparse single complexes.],
)

// Auteur: Allan CORNET
