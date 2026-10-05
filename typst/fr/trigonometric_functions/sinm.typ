#import "nelson_help.typ": *

= sinm <trigonometric_functions:sinm>

Calcule le sinus matriciel d'une matrice carrée.

== Syntaxe

- #raw("res = sinm(x)");

== Argument d'entrée

/ x: une valeur numérique : scalaire ou matrice carrée

== Argument de sortie

/ res: une valeur numérique : une matrice carrée

== Description

#strong[sinm(x)]; calcule le sinus matriciel de #strong[x];.


== Exemple

``````matlab
A = eye(3, 3);
res = sinm(A)
A = [1, 2; 3, 4];
res = sinm(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:sin>)[sin];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
