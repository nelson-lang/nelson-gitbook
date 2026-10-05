#import "../../nelson_help.typ": *

= contour3 <graphics:1_plots.3_contour_plots.contour3>

Tracé de contours 3D d'une matrice

== Syntaxe

- #raw("contour3(Z)");
- #raw("contour3(X, Y, Z)");
- #raw("contour3(..., levels)");
- #raw("contour3(..., LineSpec)");
- #raw("contour3(ax, ...)");
- #raw("M = contour3(...)");
- #raw("[M, h] = contour3(...)");

== Argument d'entrée

/ X: Coordonnées x : vecteur ou matrice.
/ Y: Coordonnées y : vecteur ou matrice.
/ Z: Coordonnées z : vecteur ou matrice.
/ levels: Niveaux de contours : scalaire ou vecteur.
/ LineSpec: Style et couleur de ligne
/ ax: Un objet graphique scalaire : conteneur parent, spécifié comme axes.

== Argument de sortie

/ M: Matrice de contours.
/ h: Un objet graphique : type contour.

== Description

#strong[contour3(Z)]; génère un tracé de contours 3D illustrant les isolignes de la matrice Z, où Z représente les hauteurs sur le plan x-y.

 Les coordonnées x et y dans le plan correspondent respectivement aux indices de colonnes et de lignes de Z.

 Pour spécifier les coordonnées x et y pour les valeurs de Z, utilisez #strong[contour3(X,Y,Z)];.


== Exemple

``````matlab
f = figure();
[X,Y,Z] = sphere(50);
[M, C ]= contour3(X,Y,Z);
C.LineWidth = 3;
``````


#align(center)[#image("contour3_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];, #nlink(<graphics:1_plots.3_contour_plots.contourc>)[contourc];, #nlink(<graphics:1_plots.3_contour_plots.contourf>)[contourf];, #nlink(<graphics:1_plots.3_contour_plots.clabel>)[clabel];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.3.0], [version initiale],
)

// Auteur: Allan CORNET
