#import "../nelson_help.typ": *

= pascal <elementary_functions:6_matrix_generation.pascal>

Triangle de Pascal

== Syntaxe

- #raw("P = pascal(N)");
- #raw("P = pascal(N, 1)");
- #raw("P = pascal(N, 2)");
- #raw("P = pascal(..., ClassName)");

== Argument d'entrée

/ N: taille du triangle de Pascal.
/ kind: (optionnel) orientation du triangle : - 0 (par défaut) : droit, - 1 : retourné horizontalement, - 2 : retourné verticalement.
/ ClassName: (optionnel) type de données de la matrice résultante (par exemple, 'double', 'single').

== Argument de sortie

/ R: matrice résultante du triangle de Pascal.

== Description

#strong[pascal]; génère une matrice du triangle de Pascal de taille N x N.


== Exemple

``````matlab
pascal(3)
      pascal(4, 1)
      pascal(5, 2)
``````


== Voir aussi

#nlink(<elementary_functions:6_matrix_generation.gallery>)[gallery];, #nlink(<elementary_functions:6_matrix_generation.vander>)[vander];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [version initiale],
)

// Auteur: Allan CORNET
