#import "nelson_help.typ": *

= all <operators:all>

tous les éléments d'une matrice satisfont une condition.

== Syntaxe

- #raw("R = all(M)");
- #raw("R = all(M, dim)");
- #raw("R = all(M, 'all')");

== Argument d'entrée

/ M: une matrice.
/ dim: un entier : dimension le long de laquelle elle opère.
/ 'all': teste sur tous les éléments de M.

== Argument de sortie

/ R: une matrice de booléens.

== Description

#strong[all]; renvoie true si tous les éléments d'une matrice satisfont une condition.

 Les matrices sparse single et sparse single complexes sont prises en charge. Les zéros implicites du sparse participent au test logique comme des valeurs nulles.


== Exemples

``````matlab
all([33, 22; 11, 0])
all([33, 22; 11, 0], 2)
``````

Test logique sur une matrice sparse single.

``````matlab
S = sparse(single([1 0; 2 3]));
R = all(S, 1)
``````


== Voir aussi

#nlink(<operators:any>)[any];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [2.0.0], [prise en charge des matrices sparse single et sparse single complexes.],
)

// Auteur: Allan CORNET
