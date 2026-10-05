#import "../../nelson_help.typ": *

= fimplicit3 <graphics:1_plots.7_surfaces_volumes_polygons.fimplicit3>

Tracer une approximation de surface implicite 3-D.

== Syntaxe

- #raw("fimplicit3(fun)");
- #raw("fimplicit3(fun, interval)");
- #raw("fimplicit3(fun, [xmin xmax ymin ymax zmin zmax])");
- #raw("fimplicit3(..., LineSpec)");
- #raw("fimplicit3(..., nomPropriete, valeurPropriete)");
- #raw("fimplicit3(parent, ...)");
- #raw("h = fimplicit3(...)");

== Description

#strong[fimplicit3]; echantillonne #strong[fun(x,y,z)]; sur une grille reguliere et affiche une surface de niveau zero approchee comme objet graphique #strong[implicitfunctionsurface];.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.implicitfunctionsurface.properties>)[proprietes de implicitfunctionsurface]; pour la liste complete des proprietes.


== Exemples

Tracer une approximation de sphere.

``````matlab
fimplicit3(@(x, y, z) x.^2 + y.^2 + z.^2 - 1, [-1.5 1.5]);
``````


#align(center)[#image("fimplicit3_1.svg")]
Utiliser un style de ligne et des proprietes de surface.

``````matlab
h = fimplicit3(@(x, y, z) x.^2 + y.^2 + z.^2 - 1, [-1.5 1.5], 'r', 'FaceAlpha', 0.5);
``````


#align(center)[#image("fimplicit3_2.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.implicitfunctionsurface.properties>)[proprietes de implicitfunctionsurface];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fimplicit>)[fimplicit];.
