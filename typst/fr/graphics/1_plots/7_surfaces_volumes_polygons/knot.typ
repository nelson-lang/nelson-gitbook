#import "../../nelson_help.typ": *

= knot <graphics:1_plots.7_surfaces_volumes_polygons.knot>

Créer une surface en nœud de trèfle.

== Syntaxe

- #raw("[X, Y, Z] = knot()");
- #raw("[X, Y, Z] = knot(n)");
- #raw("knot()");
- #raw("knot(n)");
- #raw("knot(ax, n)");

== Argument d'entrée

/ n: Nombre de facettes autour de la section du tube : entier positif (16 par défaut).
/ ax: Axes cibles : objet 'axes'.

== Argument de sortie

/ X, Y, Z: Coordonnées x, y et z de la surface du nœud sans l'afficher.

== Description

#strong[knot]; construit et affiche un tube lisse balayé autour d'une courbe de nœud de trèfle (le nœud torique (2,3) classique).

 La courbe est analytique : le tube est engendré en balayant une section circulaire le long du repère de Frenet (tangente, normale principale et binormale) de la courbe.


== Exemple

``````matlab
f = figure();
knot();
axis equal
title('Nœud de trèfle');
``````


#align(center)[#image("knot.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.sphere>)[sphere];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.cylinder>)[cylinder];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
