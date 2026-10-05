#import "../../nelson_help.typ": *

= fsurf <graphics:1_plots.7_surfaces_volumes_polygons.fsurf>

Trace une surface definie par une fonction.

== Syntaxe

- #raw("fsurf(fun)");
- #raw("fsurf(fun, range)");
- #raw("fsurf(ax, ...)");
- #raw("fsurf(..., propertyName, propertyValue)");
- #raw("go = fsurf(...)");

== Argument d'entrée

/ fun: fonction evaluee sous la forme fun(X, Y).
/ range: intervalle a deux elements pour les deux axes ou \[xmin xmax ymin ymax\].
/ MeshDensity: nombre de points d'echantillonnage dans chaque direction.
/ XRange, YRange: intervalles d'echantillonnage. Modifier une plage apres la creation reevalue la surface.
/ XRangeMode, YRangeMode: #strong[auto]; pour la plage par defaut, #strong[manual]; apres une affectation explicite.
/ ShowContours: mettre a #strong[on]; pour ajouter des lignes de contour sous la surface.

== Argument de sortie

/ go: Un objet graphique : type functionsurface.

== Description

#strong[fsurf]; echantillonne une fonction sur une grille rectangulaire et affiche une surface de type functionsurface. La grille est reevaluee quand #strong[Function];, #strong[XRange];, #strong[YRange]; ou #strong[MeshDensity]; change.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionsurface.properties>)[proprietes de functionsurface]; pour la liste complete des proprietes.


== Exemple

``````matlab

fsurf(@(x, y) sin(x) + cos(y), [-3 3 -3 3], 'FaceColor', 'interp', 'EdgeColor', 'none', 'ShowContours', 'on');
light();
lighting gouraud;

``````


#align(center)[#image("fsurf_1.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.functionsurface.properties>)[proprietes de functionsurface];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surface>)[surface];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
