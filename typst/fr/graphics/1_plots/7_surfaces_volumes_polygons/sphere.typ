#import "../../nelson_help.typ": *

= sphere <graphics:1_plots.7_surfaces_volumes_polygons.sphere>

Créer une sphère.

== Syntaxe

- #raw("[X, Y, Z] = sphere()");
- #raw("[X, Y, Z] = sphere(n)");
- #raw("sphere()");
- #raw("sphere(n)");
- #raw("sphere(ax, n)");

== Argument d'entrée

/ n: Nombre de points : entier positif.
/ ax: Axes cibles : objet 'axes'.

== Argument de sortie

/ X, Y, Z: Coordonnées x, y et z d'une sphère sans l'afficher.

== Description

#strong[sphere]; crée une sphère et l'affiche.


== Exemple

``````matlab
f = figure();
colormap(gray);
subplot(1, 3, 1);
ax1 = gca();
sphere(ax1);
axis equal
title('20-by-20 faces (Default)');
subplot(1, 3, 2);
ax2 = gca();
sphere(ax2, 50);
axis equal
title('50-by-50 faces');
subplot(1, 3, 3);
ax3 = gca();
sphere(ax3,100);
axis equal
title('100-by-100 faces');
``````


#align(center)[#image("sphere.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.cylinder>)[cylinder];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
