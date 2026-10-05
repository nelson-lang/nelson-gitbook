#import "../../../nelson_help.typ": *

= colormaplist <graphics:3_labels_styling.2_color_styling.colormaps.colormaplist>

Fournit la liste des palettes de couleurs.

== Syntaxe

- #raw("colormaps = colormaplist()");

== Argument de sortie

/ colormaps: Vecteur de chaines des palettes de couleurs disponibles.

== Description

#strong[colormaplist]; retourne les palettes de couleurs disponibles sous forme de tableau de chaines #strong[m];-par-#strong[1];.


== Exemple

``````matlab
f = figure('Position', [100, 100, 600, 400], 'Resize', 'off');
ax = axes('Position', [0.1, 0.2, 0.6, 0.7]);
surf(ax, peaks);
cmaps = colormaplist;
listbox = uicontrol('Style', 'listbox', 'Position', [450, 100, 100, 200], 'String', cmaps);
listbox.Callback = @(src, void) colormap(ax, cmaps(src.Value));

``````


#align(center)[#image("colormaplist.svg")]

== Voir aussi

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [version initiale],
)

// Auteur: Allan CORNET
