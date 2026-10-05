#import "../../nelson_help.typ": *

= surfc <graphics:1_plots.7_surfaces_volumes_polygons.surfc>

Afficher une surface avec des contours en dessous.

== Syntaxe

- #raw("surfc(Z)");
- #raw("surfc(X, Y, Z)");
- #raw("surfc(parent, ...)");
- #raw("h = surfc(...)");

== Description

#strong[surfc]; affiche une surface et des lignes de contour projetees a la base de la surface.


== Exemple

Surface avec contours.

``````matlab
surfc(peaks(30));
``````


#align(center)[#image("surfc_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3];.
