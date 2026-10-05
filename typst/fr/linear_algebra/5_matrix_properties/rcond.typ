#import "../nelson_help.typ": *

= rcond <linear_algebra:5_matrix_properties.rcond>

Nombre de condition inverse.

== Syntaxe

- #raw("res = rcond(x)");

== Argument d'entrée

/ x: une valeur numérique : scalaire ou matrice carrée (double ou simple précision)

== Argument de sortie

/ res: une valeur numérique : un scalaire.

== Description

#strong[rcond(x)]; calcule le réciproque du nombre de condition de x en norme 1.


== Exemple

``````matlab
X = rand(10, 10);
r = rcond(X);
``````


== Voir aussi

#nlink(<linear_algebra:1_linear_systems.inv>)[inv];, #nlink(<linear_algebra:5_matrix_properties.cond>)[cond];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
