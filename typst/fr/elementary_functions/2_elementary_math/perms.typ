#import "../nelson_help.typ": *

= perms <elementary_functions:2_elementary_math.perms>

Toutes les permutations possibles

== Syntaxe

- #raw("P = perms(v)");

== Argument d'entrée

/ v: vecteur.

== Argument de sortie

/ P: matrice contenant toutes les permutations des éléments de v, en ordre lexicographique inverse.

== Description

#strong[perms]; retourne une matrice contenant toutes les permutations des éléments du vecteur v. Chaque ligne de P est une permutation ; il y a factorial(numel(v)) lignes, en ordre lexicographique inverse.


== Exemple

``````matlab
perms([1 2 3])
``````


== Voir aussi

#nlink(<elementary_functions:2_elementary_math.nchoosek>)[nchoosek];, #nlink(<elementary_functions:2_elementary_math.factorial>)[factorial];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
