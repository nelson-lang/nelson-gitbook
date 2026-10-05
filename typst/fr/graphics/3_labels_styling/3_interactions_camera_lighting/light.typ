#import "../../nelson_help.typ": *

= light <graphics:3_labels_styling.3_interactions_camera_lighting.light>

Cree un objet lumiere dans des axes.

== Syntaxe

- #raw("light()");
- #raw("light(ax, ...)");
- #raw("light(..., propertyName, propertyValue)");
- #raw("go = light(...)");

== Argument d'entrée

/ ax: Axes cible.
/ propertyName: Nom de propriete de light.
/ propertyValue: Valeur de propriete de light.

== Argument de sortie

/ go: Un objet graphique : type light.

== Description

#strong[light]; cree une lumiere qui agit sur les surfaces et les patchs du meme axe lorsque leur eclairage est actif.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.light.properties>)[proprietes de light]; pour la liste complete des proprietes.


== Exemple

``````matlab

f = figure();
surf(peaks(30), 'EdgeColor', 'none', 'FaceLighting', 'gouraud');
light('Position', [1 -1 1]);
material('shiny');
view(35, 28);

``````


#align(center)[#image("light_1.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.light.properties>)[proprietes de light];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.lighting>)[lighting];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.material>)[material];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
