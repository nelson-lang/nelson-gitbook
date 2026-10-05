#import "nelson_help.typ": *

= rad2deg <trigonometric_functions:rad2deg>

Convertit un angle de radians en degrés.

== Syntaxe

- #raw("d = rad2deg(r)");

== Argument d'entrée

/ r: une valeur numérique (double ou simple)

== Argument de sortie

/ d: une valeur numérique

== Description

#strong[d \= rad2deg(r)]; convertit les unités d'angle de radians en degrés pour chaque élément de #strong[r];.
== Exemple

``````matlab
dist = 7194;
radEarth = 6371;
D = rad2deg(dist / radEarth)
``````


== Voir aussi

#nlink(<trigonometric_functions:deg2rad>)[deg2rad];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
