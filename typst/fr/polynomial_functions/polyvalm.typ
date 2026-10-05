#import "nelson_help.typ": *

= polyvalm <polynomial_functions:polyvalm>

Évaluation de polynôme matriciel.

== Syntaxe

- #raw("Y = polyvalm(p, X)");

== Argument d'entrée

/ p: vecteur : coefficients du polynôme
/ X: matrice carrée : matrice d'entrée

== Argument de sortie

/ Y: vecteur ligne : coefficients polynomiaux de sortie (ou résultat du polynôme matriciel)

== Description

#strong[polyvalm]; évalue un polynôme matriciel.


== Exemple

``````matlab

R = polyvalm ([1, 2, 3, 4], [3, -4, 1; -2, 0, 2; -1, 4, -3])
``````


== Voir aussi

#nlink(<polynomial_functions:polyval>)[polyval];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
