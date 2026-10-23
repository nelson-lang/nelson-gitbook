#import "nelson_help.typ": *

= degtorad <trigonometric_functions:degtorad>

Convertit un angle de degrés en radians.

== Syntaxe

- #raw("r = degtorad(d)");

== Argument d'entrée

/ d: une valeur numérique (double ou simple)

== Argument de sortie

/ r: une valeur numérique

== Description

#strong[r \= degtorad(d)]; convertit les unités d'angle de degrés en radians pour chaque élément de #strong[d];.
== Exemple

``````matlab
D = 64.7;
R = degtorad(D);
radEarth = 6371;
dist = radEarth * R
``````


== Voir aussi

#nlink(<trigonometric_functions:deg2rad>)[deg2rad];, #nlink(<trigonometric_functions:radtodeg>)[radtodeg];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
