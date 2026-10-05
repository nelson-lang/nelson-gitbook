#import "../nelson_help.typ": *

= isbanded <linear_algebra:5_matrix_properties.isbanded>

Détermine si une matrice est dans une largeur de bande spécifique.

== Syntaxe

- #raw("tf = isbanded(A, lower, upper)");

== Argument d'entrée

/ A: matrice d'entrée
/ lower, upper: largeur de bande inférieure : lower, et largeur de bande supérieure : upper, de la matrice A.

== Argument de sortie

/ tf: logique

== Description

#strong[tf \= isbanded(A, lower, upper)]; retourne #strong[true]; si la matrice #strong[A]; est dans la largeur de bande inférieure spécifiée #strong[lower]; et la largeur de bande supérieure #strong[upper];.


== Exemple

``````matlab
M = [1 0 0 0 0; 2 1 0 0 0; 3 2 1 0 0]
TF = isbanded(M, 2, 0)
TF = isbanded(M, 2, 1)

``````


== Voir aussi

#nlink(<linear_algebra:5_matrix_properties.bandwidth>)[bandwidth];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
