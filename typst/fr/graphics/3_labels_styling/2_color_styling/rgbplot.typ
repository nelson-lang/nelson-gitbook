#import "../../nelson_help.typ": *

= rgbplot <graphics:3_labels_styling.2_color_styling.rgbplot>

Tracer une palette de couleurs.

== Syntaxe

- #raw("rgbplot(cmap)");

== Argument d'entrée

/ cmap: Palette de couleurs : matrice à trois colonnes de triplets RGB.

== Description

#strong[rgbplot(cmap)]; trace les intensités R (rouge), G (vert) et B (bleu) de la palette de couleurs#strong[cmap]; spécifiée.


== Exemple

``````matlab
f  = figure();
colormap = [0.2 0.1 0.5;
    0.1 0.5 0.8;
    0.2 0.7 0.6;
    0.8 0.7 0.3;
    0.9 1 0];
rgbplot(colormap);
``````


#align(center)[#image("rgbplot.svg")]

== Voir aussi

#nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [version initiale],
)

// Auteur: Allan CORNET
