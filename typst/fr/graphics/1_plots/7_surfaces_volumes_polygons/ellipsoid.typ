#import "../../nelson_help.typ": *

= ellipsoid <graphics:1_plots.7_surfaces_volumes_polygons.ellipsoid>

Crée un ellipsoïde.

== Syntaxe

- #raw("[X, Y, Z] = ellipsoid(xc, yc, zc, xr, yr, zr)");
- #raw("[X, Y, Z] = ellipsoid(xc, yc, zc, xr, yr, zr, n)");
- #raw("ellipsoid(...)");
- #raw("ellipsoid(ax, ...)");

== Argument d'entrée

/ xc, yc, zc: le centre de l'ellipsoïde.
/ xr, yr, zr: les longueurs des demi-axes selon x, y et z.
/ n: un entier positif : la résolution de la grille (par défaut 20). Le résultat est (n+1)-par-(n+1).

== Argument de sortie

/ X, Y, Z: les coordonnées de la surface de l'ellipsoïde.

== Description

#strong[ellipsoid]; génère les coordonnées d'un ellipsoïde centré en #strong[(xc, yc, zc)]; avec les demi-axes #strong[(xr, yr, zr)];. Appelée sans argument de sortie, elle trace la surface.


== Exemple

``````matlab
f = figure();
ellipsoid(0, 0, 0, 3, 2, 1);
axis equal
``````


== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.sphere>)[sphere];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Version initiale.],
)

// Auteur: Allan CORNET
