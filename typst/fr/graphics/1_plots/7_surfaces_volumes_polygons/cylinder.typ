#import "../../nelson_help.typ": *

= cylinder <graphics:1_plots.7_surfaces_volumes_polygons.cylinder>

Créer un cylindre.

== Syntaxe

- #raw("[X, Y, Z] = cylinder()");
- #raw("[X, Y, Z] = cylinder(r)");
- #raw("[X, Y, Z] = cylinder(r, n)");
- #raw("cylinder()");
- #raw("cylinder(r)");
- #raw("cylinder(r, n)");
- #raw("cylinder(ax, ...)");

== Argument d'entrée

/ r: Courbe de profil : vecteur.
/ n: Nombre de points : entier positif.
/ ax: Axes cibles : objet 'axes'.

== Argument de sortie

/ X, Y, Z: Coordonnées x, y et z d'un cylindre sans l'afficher.

== Description

#strong[cylinder]; crée un cylindre et l'affiche.


== Exemples

``````matlab
f1 = figure();
colormap(spring)
cylinder()
``````


#align(center)[#image("cylinder_1.svg")]
``````matlab
f2 = figure();
colormap(summer)
r = 4;
cylinder(r);
``````


#align(center)[#image("cylinder_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.sphere>)[sphere];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
