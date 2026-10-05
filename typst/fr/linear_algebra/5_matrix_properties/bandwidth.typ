#import "../nelson_help.typ": *

= bandwidth <linear_algebra:5_matrix_properties.bandwidth>

Largeur de bande inférieure et supérieure d'une matrice.

== Syntaxe

- #raw("[lower, upper] = bandwidth(A)");
- #raw("R = bandwidth(A, type)");

== Argument d'entrée

/ A: matrice d'entrée
/ type: 'upper' ou 'lower'

== Argument de sortie

/ lower, upper: largeur de bande inférieure : lower, et largeur de bande supérieure : upper de la matrice A.
/ R: largeur de bande inférieure ou supérieure.

== Description

#strong[\[lower, upper\] \= bandwidth(A)]; retourne les largeurs de bande inférieure #strong[lower]; et supérieure #strong[upper]; de la matrice #strong[A];.


== Exemple

``````matlab
M = [10 -20 40; -50 20 0; 10 0 30]
[lower, upper] = bandwidth(M)

``````


== Voir aussi

#nlink(<linear_algebra:5_matrix_properties.isbanded>)[isbanded];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
