#import "../../nelson_help.typ": *

= surface <graphics:1_plots.7_surfaces_volumes_polygons.surface>

Tracé de surface primitif.

== Syntaxe

- #raw("surface(X, Y, Z)");
- #raw("surface(X, Y, Z, C)");
- #raw("surface(Z)");
- #raw("surface(Z, C)");
- #raw("surface(parent, ...)");
- #raw("surface(..., propertyName, propertyValue)");
- #raw("go = surface(...)");

== Argument d'entrée

/ X: Coordonnées x : vecteur ou matrice.
/ Y: Coordonnées y : vecteur ou matrice.
/ Z: Coordonnées z : vecteur ou matrice.
/ C: Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
/ parent: Un objet graphique scalaire : conteneur parent, spécifié comme axes.
/ propertyName: Une chaîne scalaire ou un vecteur ligne de caractères.
/ propertyValue: Une valeur.

== Argument de sortie

/ go: Un objet graphique : type surface.

== Description

#strong[surf]; et#strong[surface]; sont deux fonctions utilisées pour créer des tracés de surface 3D, mais il existe quelques différences entre elles.

 La fonction#strong[surf]; est utilisée pour tracer une surface définie par une fonction de deux variables ou par un ensemble de points de données dispersés.

 Elle nécessite trois arguments d'entrée : X, Y et Z. X et Y définissent les coordonnées des points de données, et Z définit la hauteur de la surface à chaque point.

 La fonction #strong[surf]; offre également des options supplémentaires pour personnaliser l'apparence du tracé, telles que l'éclairage et la couleur.

 

 La fonction #strong[surface]; est utilisée pour tracer une surface définie par une matrice de données. Elle nécessite trois arguments d'entrée : X, Y et Z. X et Y définissent les coordonnées des points de données, et Z est une matrice qui définit la hauteur de la surface à chaque point.

 La taille de Z doit correspondre à la taille de X et Y. La fonction surface offre également des options supplémentaires pour personnaliser l'apparence du tracé, telles que l'éclairage et la couleur.

 En résumé, les fonctions #strong[surf]; et#strong[surface]; sont utilisées pour des tracés de surface 3D, mais#strong[surf]; est utilisée pour une surface définie par une fonction de deux variables ou par un ensemble de points de données dispersés, tandis que #strong[surface]; est utilisée pour une surface définie par une matrice de données, et la taille de Z doit correspondre à celle de X et Y.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.surface.properties>)[proprietes de surface]; pour la liste complete des proprietes.


== Exemple

``````matlab
f = figure();
data = peaks(50);
ax1 = subplot(1, 2, 1);
s1 = surface(ax1, data);
ax2 = subplot(1, 2, 2);
s2 = surf(ax2, data);

``````


#align(center)[#image("surface_1.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.surface.properties>)[proprietes de surface];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.surf>)[surf];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.view>)[view];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.light>)[light];, #nlink(<graphics:3_labels_styling.2_color_styling.shading>)[shading];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [Version initiale],
)

// Auteur: Allan CORNET
