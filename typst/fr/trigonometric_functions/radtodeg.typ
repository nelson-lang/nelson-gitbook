#import "nelson_help.typ": *

= radtodeg <trigonometric_functions:radtodeg>

Convertit un angle de radians en degrés.

== Syntaxe

- #raw("d = radtodeg(r)");

== Argument d'entrée

/ r: une valeur numérique (double ou simple)

== Argument de sortie

/ d: une valeur numérique

== Description

#strong[d \= radtodeg(r)]; convertit les unités d'angle de radians en degrés pour chaque élément de #strong[r];.
== Exemple

``````matlab
dist = 7194;
radEarth = 6371;
D = radtodeg(dist / radEarth)
``````


== Voir aussi

#nlink(<trigonometric_functions:rad2deg>)[rad2deg];, #nlink(<trigonometric_functions:degtorad>)[degtorad];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
