#import "../../nelson_help.typ": *

= fcontour <graphics:1_plots.3_contour_plots.fcontour>

Tracer des contours depuis une fonction de deux variables.

== Syntaxe

- #raw("fcontour(fun)");
- #raw("fcontour(fun, xyinterval)");
- #raw("fcontour(fun, [xmin xmax ymin ymax])");
- #raw("fcontour(..., LineSpec)");
- #raw("fcontour(..., nomPropriete, valeurPropriete)");
- #raw("fcontour(parent, ...)");
- #raw("h = fcontour(...)");

== Description

#strong[fcontour]; echantillonne #strong[fun(x,y)]; sur une grille reguliere et affiche des lignes de contour comme objet graphique #strong[functioncontour];.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functioncontour.properties>)[proprietes de functioncontour]; pour la liste complete des proprietes.


== Exemples

Afficher des contours de fonction.

``````matlab
fcontour(@(x, y) x.^2 - y.^2, [-2 2 -2 2]);
``````


#align(center)[#image("fcontour_1.svg")]
Utiliser une couleur de ligne et des niveaux explicites.

``````matlab
h = fcontour(@(x, y) x + y, '-r', 'LevelList', [-2 0 2]);
h.LineWidth = 1.5;
``````


#align(center)[#image("fcontour_2.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functioncontour.properties>)[proprietes de functioncontour];, #nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fmesh>)[fmesh];.
