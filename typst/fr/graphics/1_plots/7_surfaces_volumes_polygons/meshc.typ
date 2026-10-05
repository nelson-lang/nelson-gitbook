#import "../../nelson_help.typ": *

= meshc <graphics:1_plots.7_surfaces_volumes_polygons.meshc>

Afficher un maillage avec des contours en dessous.

== Syntaxe

- #raw("meshc(Z)");
- #raw("meshc(Z, C)");
- #raw("meshc(X, Y, Z)");
- #raw("meshc(X, Y, Z, C)");
- #raw("meshc(parent, ...)");
- #raw("meshc('Parent', parent, ...)");
- #raw("h = meshc(...)");

== Description

#strong[meshc]; affiche un maillage et des lignes de contour projetees a la base du maillage.

 La valeur retournee est un vecteur graphique a deux elements contenant l'objet surface puis l'objet contour.


== Exemples

Maillage avec contours.

``````matlab
meshc(peaks(30));
``````


#align(center)[#image("meshc_1.svg")]
Utiliser des donnees de couleur separees et des axes parents.

``````matlab
f = figure();
ax = axes('Parent', f);
Z = peaks(20);
C = abs(Z);
meshc('Parent', ax, Z, C, 'LineWidth', 1.5);
``````


#align(center)[#image("meshc_2.svg")]

== Voir aussi

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.mesh>)[mesh];, #nlink(<graphics:1_plots.3_contour_plots.contour3>)[contour3];.
