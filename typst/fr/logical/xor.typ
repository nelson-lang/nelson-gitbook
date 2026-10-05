#import "nelson_help.typ": *

= xor <logical:xor>

Ou exclusif (XOR).

== Syntaxe

- #raw("R = xor(V1, V2)");
- #raw("R = xor(V1, V2, ... , VN)");

== Argument d'entrée

/ V1: une matrice.
/ V2: une matrice de mêmes dimensions que V1.
/ VN: une matrice de mêmes dimensions que V1.

== Argument de sortie

/ R: une matrice logique.

== Description

#strong[xor]; effectue un OU exclusif logique.


== Exemple

``````matlab
x = [0 1 0 1];
y = [0 0 1 1];
R = xor(x, y)
``````


== Voir aussi

#nlink(<operators:or>)[or];, #nlink(<operators:and>)[and];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
