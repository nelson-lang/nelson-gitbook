#import "../nelson_help.typ": *

= ishermitian <linear_algebra:5_matrix_properties.ishermitian>

Teste si une matrice est hermitienne ou skew-hermitienne.

== Syntaxe

- #raw("res = ishermitian(x)");
- #raw("res = ishermitian(x, 'skew')");
- #raw("res = ishermitian(x, 'nonskew')");

== Argument d'entrée

/ x: une valeur numérique : scalaire ou matrice (double ou simple précision, entiers, logique).

== Argument de sortie

/ res: un booléen.

== Description

#strong[ishermitian(x)]; teste si une matrice est hermitienne ou skew-hermitienne.

 Une matrice est skew-hermitienne si la transposée conjuguée est égale à l'opposé de la matrice originale.


== Exemple

``````matlab
ishermitian([1 0 1i; 0 1 0; -1i 0 1])
``````


== Voir aussi

#nlink(<linear_algebra:5_matrix_properties.issymmetric>)[issymmetric];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
