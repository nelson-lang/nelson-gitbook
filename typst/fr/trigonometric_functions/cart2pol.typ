#import "nelson_help.typ": *

= cart2pol <trigonometric_functions:cart2pol>

Transforme des coordonnées cartésiennes en coordonnées polaires ou cylindriques.

== Syntaxe

- #raw("[theta, rho] = cart2pol(x, y)");
- #raw("[theta, rho, z] = cart2pol(x, y, z)");

== Argument d'entrée

/ x: une valeur numérique (double ou simple réel) : Coordonnées cartésiennes
/ y: une valeur numérique (double ou simple réel) : Coordonnées cartésiennes
/ z: une valeur numérique (double ou simple réel) : Coordonnées cartésiennes

== Argument de sortie

/ theta: une valeur numérique : Coordonnée angulaire.
/ rho: une valeur numérique : Coordonnée radiale.
/ z: a numeric value: Elevation coordinate.

== Description

#strong[cart2pol]; transforms Cartesian coordinates to polar or cylindrical.
== Exemples

``````matlab
x = [5 3.5355 0 -10];
y = [0 3.5355 10 0];
[theta, rho] = cart2pol(x, y)
``````

``````matlab
x = [1 2.1213 0 -5];
y = [0 2.1213 4 0];
z = [7 8 9 10];
[theta, rho, el] = cart2pol(x, y, z)
``````


== Voir aussi

#nlink(<trigonometric_functions:pol2cart>)[pol2cart];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
