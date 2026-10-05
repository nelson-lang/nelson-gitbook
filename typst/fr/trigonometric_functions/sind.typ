#import "nelson_help.typ": *

= sind <trigonometric_functions:sind>

Calcule le sinus en degrés pour chaque élément de x.

== Syntaxe

- #raw("res = sind(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[sind]; calcule le sinus en degrés pour chaque élément de #strong[x];.


== Exemple

``````matlab
A = [0 30 45 60 90 360];
sind(A)
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
