#import "nelson_help.typ": *

= sph2cart <trigonometric_functions:sph2cart>

Transforme des coordonnées sphériques en coordonnées cartésiennes.

== Syntaxe

- #raw("[x, y, z] = sph2cart(azimuth, elevation, r)");

== Argument d'entrée

/ azimuth: une valeur numérique : Angle d'azimut.
/ elevation: une valeur numérique : Angle d'élévation.
/ r: une valeur numérique : Rayon.

== Argument de sortie

/ x: une valeur numérique (double ou simple réel) : Coordonnées cartésiennes
/ y: une valeur numérique (double ou simple réel) : Coordonnées cartésiennes
/ z: une valeur numérique (double ou simple réel) : Coordonnées cartésiennes

== Description

#strong[sph2cart]; transforms Cartesian to spherical coordinates.
== Exemple

``````matlab
azimut = [0.7854, 0.7854, -0.7854, -0.7854; 2.3562, 2.3562, -2.3562, -2.3562];
elevation = [0.6155, -0.6155, 0.6155, -0.6155; 0.6155, -0.6155, 0.6155, -0.6155];
radius = 1.7321 * ones(2, 4);
[x, y, z] = sph2cart(azimut, elevation, radius)
``````


== Voir aussi

#nlink(<trigonometric_functions:cart2sph>)[cart2sph];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
