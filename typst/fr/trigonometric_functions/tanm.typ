#import "nelson_help.typ": *

= tanm <trigonometric_functions:tanm>

Calcule la tangente matricielle d'une matrice carrée.

== Syntaxe

- #raw("res = tanm(x)");

== Argument d'entrée

/ x: une valeur numérique : scalaire ou matrice carrée

== Argument de sortie

/ res: une valeur numérique : une matrice carrée

== Description

#strong[tanm(x)]; calcule la tangente matricielle de #strong[x];.


== Exemple

``````matlab
A = eye(3, 3);
res = tanm(A)
A = [1, 2; 3, 4];
res = tanm(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:tan>)[tan];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
