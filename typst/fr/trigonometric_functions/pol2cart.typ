#import "nelson_help.typ": *

= pol2cart <trigonometric_functions:pol2cart>

Transforme des coordonnées polaires ou cylindriques en coordonnées cartésiennes.

== Syntaxe

- #raw("[x, y] = pol2cart(theta, rho)");
- #raw("[x, y, z] = pol2cart(theta, rho, z)");

== Argument d'entrée

/ theta: une valeur numérique : Coordonnée angulaire.
/ rho: une valeur numérique : Coordonnée radiale.
/ z: une valeur numérique : Coordonnée d'élévation.

== Argument de sortie

/ x: une valeur numérique (double ou simple réel) : Coordonnées cartésiennes
/ y: une valeur numérique (double ou simple réel) : Coordonnées cartésiennes
/ z: a numeric value (double or single real): Cartesian coordinates

== Description

#strong[pol2cart]; transforms polar or cylindrical coordinates to Cartesian.
== Exemple

``````matlab
theta = [0 pi/4 pi/2 pi];
rho = [5 5 10 10];
[x, y] = pol2cart(theta, rho)
``````


== Voir aussi

#nlink(<trigonometric_functions:cart2pol>)[cart2pol];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
