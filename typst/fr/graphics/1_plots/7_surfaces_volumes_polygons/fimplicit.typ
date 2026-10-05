#import "../../nelson_help.typ": *

= fimplicit <graphics:1_plots.7_surfaces_volumes_polygons.fimplicit>

Tracer une courbe de fonction implicite.

== Syntaxe

- #raw("fimplicit(fun)");
- #raw("fimplicit({fun1, fun2, ...})");
- #raw("fimplicit(fun, interval)");
- #raw("fimplicit(fun, [xmin xmax ymin ymax])");
- #raw("fimplicit(..., LineSpec)");
- #raw("fimplicit(..., nomPropriete, valeurPropriete)");
- #raw("fimplicit(parent, ...)");
- #raw("h = fimplicit(...)");

== Description

#strong[fimplicit]; echantillonne #strong[fun(x,y)]; et trace le contour de niveau zero comme objet graphique #strong[implicitfunctionline];.

 Quand un tableau de cellules de fonctions est fourni, un objet #strong[implicitfunctionline]; est cree pour chaque fonction et le tableau de handles retourne est un vecteur colonne.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.implicitfunctionline.properties>)[proprietes de implicitfunctionline]; pour la liste complete des proprietes.


== Exemples

Tracer un cercle unite.

``````matlab
fimplicit(@(x, y) x.^2 + y.^2 - 1, [-2 2 -2 2]);
``````


#align(center)[#image("fimplicit_1.svg")]
Utiliser un style de ligne et des proprietes de ligne.

``````matlab
h = fimplicit(@(x, y) x.^2 + y.^2 - 1, [-2 2], '--r', 'LineWidth', 2);
``````


#align(center)[#image("fimplicit_2.svg")]
Tracer deux courbes implicites.

``````matlab
f1 = @(x, y) x.^2 + y.^2 - 1;
f2 = @(x, y) x - y;
h = fimplicit({f1, f2});
``````


#align(center)[#image("fimplicit_3.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.implicitfunctionline.properties>)[proprietes de implicitfunctionline];, #nlink(<graphics:1_plots.3_contour_plots.fcontour>)[fcontour];, #nlink(<graphics:1_plots.3_contour_plots.contour>)[contour];.
