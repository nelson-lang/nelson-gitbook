#import "nelson_help.typ": *

= acosd <trigonometric_functions:acosd>

Cosinus inverse en degrés.

== Syntaxe

- #raw("res = acosd(x)");

== Argument d'entrée

/ x: une valeur numérique

== Argument de sortie

/ res: une valeur numérique

== Description

#strong[acosd]; calcule le cosinus inverse en degrés pour chaque élément de #strong[x];.
== Exemple

``````matlab
x = [1 -20 0 2 5];
y = acosd(x)
``````


== Voir aussi

#nlink(<trigonometric_functions:cosd>)[cosd];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
