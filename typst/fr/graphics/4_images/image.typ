#import "../nelson_help.typ": *

= image <graphics:4_images.image>

Affiche une image à partir d'un tableau.

== Syntaxe

- #raw("image()");
- #raw("image(C)");
- #raw("image(X, Y, C)");
- #raw("image('CData', C)");
- #raw("image('XData', X, 'YData', Y,'CData', C)");
- #raw("image(..., propertyName, propertyValue)");
- #raw("image(parent, ...)");
- #raw("go = image(...)");

== Argument d'entrée

/ X: Coordonnées x : vecteur ou matrice.
/ Y: Coordonnées y : vecteur ou matrice.
/ C: Tableau de couleurs : tableau m-par-n-par-3 de triplets RGB.
/ parent: Un objet graphique scalaire : conteneur parent, spécifié comme un axes.
/ propertyName: Une chaîne scalaire ou un vecteur ligne de caractères.
/ propertyValue: Une valeur.

== Argument de sortie

/ go: Un objet graphique : type image.

== Description

#strong[image]; affiche les données C sous forme d'image.

 Voir #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.image.properties>)[proprietes de image]; pour la liste complete des proprietes.


== Exemples

``````matlab
f = figure();
L = linspace(0, 1);
R = L' * L;
G = L' * (L .^ 2);
B = L' * (0 *L + 1);
C(:, :, 1) = G;
C(:, :, 2) = G;
C(:, :, 3) = B;
im = image(C)
``````


#align(center)[#image("image_1.svg")]
``````matlab
f = figure();
image();
``````


#align(center)[#image("image_2.svg")]

== Voir aussi

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.image.properties>)[proprietes de image];, #nlink(<graphics:4_images.imagesc>)[imagesc];, #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
  [1.7.0], [Ajout des callbacks CreateFcn, DeleteFcn.],
  [--], [Ajout de la propriété BeingDeleted.],
)

// Auteur: Allan CORNET
