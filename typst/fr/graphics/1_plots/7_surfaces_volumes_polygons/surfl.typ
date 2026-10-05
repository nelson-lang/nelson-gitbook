#import "../../nelson_help.typ": *

= surfl <graphics:1_plots.7_surfaces_volumes_polygons.surfl>

Afficher une surface eclairee.

== Syntaxe

- #raw("surfl(Z)");
- #raw("surfl(X, Y, Z)");
- #raw("surfl(..., 'light')");
- #raw("surfl(parent, ...)");
- #raw("h = surfl(...)");

== Description

#strong[surfl]; affiche une surface avec une reflectance basee sur l'eclairage stockee dans les donnees de couleur de la surface.

 #strong[surfl(..., 'light')]; cree une lumiere infinie et retourne les handles de la surface et de la lumiere.


== Exemple

Surface eclairee.

``````matlab
surfl(peaks(30));
shading interp;
``````


#align(center)[#image("surfl_1.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light];.
