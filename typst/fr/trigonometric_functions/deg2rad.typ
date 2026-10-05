#import "nelson_help.typ": *

= deg2rad <trigonometric_functions:deg2rad>

Convertit un angle de degrés en radians.

== Syntaxe

- #raw("r = deg2rad(d)");

== Argument d'entrée

/ d: une valeur numérique (double ou simple)

== Argument de sortie

/ r: une valeur numérique

== Description

#strong[d \= deg2rad(r)]; convertit les unités d'angle de degrés en radians pour chaque élément de #strong[r];.
== Exemple

``````matlab
D = 64.7;
R = deg2rad(D);
radEarth = 6371;
dist = radEarth * R
``````


== Voir aussi

#nlink(<trigonometric_functions:rad2deg>)[rad2deg];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
