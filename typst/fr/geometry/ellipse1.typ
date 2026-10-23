#import "nelson_help.typ": *

= ellipse1 <geometry:ellipse1>

Points d'une petite ellipse sur une sphère.

== Syntaxe

- #raw("[lat, lon] = ellipse1(lat0, lon0, ellipse)");
- #raw("[lat, lon] = ellipse1(lat0, lon0, ellipse, offset)");
- #raw("[lat, lon] = ellipse1(lat0, lon0, ellipse, offset, npts)");

== Argument d'entrée

/ lat0: latitude du centre de l'ellipse, en degrés.
/ lon0: longitude du centre de l'ellipse, en degrés.
/ ellipse: vecteur à deux éléments #strong[\[semimajor eccentricity\]]; ; le demi-grand axe est une distance sphérique en degrés d'arc.
/ offset: azimut du demi-grand axe, en degrés (défaut 0).
/ npts: nombre de points utilisés pour tracer l'ellipse (défaut 100).

== Argument de sortie

/ lat: latitudes des points du contour de l'ellipse, en degrés.
/ lon: longitudes des points du contour de l'ellipse, en degrés.

== Description

#strong[ellipse1]; renvoie la latitude et la longitude de points traçant une petite ellipse sur une sphère, centrée en #strong[(lat0, lon0)];. L'ellipse est décrite par son demi-grand axe (une distance sphérique en degrés d'arc) et son excentricité. Une excentricité nulle produit un petit cercle dont le rayon est égal au demi-grand axe. Les points du contour sont obtenus avec #strong[reckon];, de sorte que le premier et le dernier point coïncident.


== Exemple

``````matlab
[lat, lon] = ellipse1(0, 0, [10 0.8], 30);
f = figure();
plot(lon, lat);
axis equal
``````


== Voir aussi

#nlink(<geometry:reckon>)[reckon];, #nlink(<geometry:axes2ecc>)[axes2ecc];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
