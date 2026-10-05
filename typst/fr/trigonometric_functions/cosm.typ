#import "nelson_help.typ": *

= cosm <trigonometric_functions:cosm>

Calcule le cosinus matriciel d'une matrice carrée.

== Syntaxe

- #raw("res = cosm(x)");

== Argument d'entrée

/ x: une valeur numérique : scalaire ou matrice carrée

== Argument de sortie

/ res: une valeur numérique : une matrice carrée

== Description

#strong[cosm(x)]; calcule le cosinus matriciel de #strong[x];.


== Exemple

``````matlab
A = eye(3, 3);
res = cosm(A)
A = [1, 2; 3, 4];
res = cosm(A)
``````


== Voir aussi

#nlink(<trigonometric_functions:cos>)[cos];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
