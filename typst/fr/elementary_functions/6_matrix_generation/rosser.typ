#import "../nelson_help.typ": *

= rosser <elementary_functions:6_matrix_generation.rosser>

Problème de test classique pour valeurs propres symétriques.

== Syntaxe

- #raw("R = rosser()");
- #raw("R = rosser(classname)");

== Argument d'entrée

/ classname: vecteur de caractères ligne ou chaîne scalaire : nom de classe souhaité ('double' par défaut).

== Argument de sortie

/ R: matrice de Rosser.

== Description

#strong[R \= rosser()]; renvoie la matrice de Rosser.


== Bibliographie

https:\/\/archive.org\/details\/jresv47n4p291

== Exemple

``````matlab
R = rosser()
``````


== Voir aussi

#nlink(<elementary_functions:6_matrix_generation.toeplitz>)[toeplitz];, #nlink(<linear_algebra:3_eigen_singular_values.eig>)[eig];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
