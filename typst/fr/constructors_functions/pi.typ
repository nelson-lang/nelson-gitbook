#import "nelson_help.typ": *

= pi <constructors_functions:pi>

Rapport de la circonférence d'un cercle à son diamètre.

== Syntaxe

- #raw("pi");

== Description

#strong[pi]; retourne le nombre à virgule flottante le plus proche de la valeur de #strong[π];.


== Exemples

``````matlab
cos(pi)
``````

``````matlab
sin(pi)
``````

``````matlab
4*atan(1) == pi
``````


== Voir aussi

#nlink(<trigonometric_functions:cos>)[cos];, #nlink(<trigonometric_functions:sin>)[sin];, #nlink(<trigonometric_functions:atan>)[atan];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
