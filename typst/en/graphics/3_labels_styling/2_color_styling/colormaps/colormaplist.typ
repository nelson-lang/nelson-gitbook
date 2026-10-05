#import "../../../nelson_help.typ": *

= colormaplist <graphics:3_labels_styling.2_color_styling.colormaps.colormaplist>

Provide list of colormaps.

== Syntax

- #raw("colormaps = colormaplist()");

== Output argument

/ colormaps: String vector of available colormaps.

== Description

#strong[colormaplist]; returns the available colormaps as an#strong[m];-by-#strong[1]; string array.


== Example

``````matlab
f = figure('Position', [100, 100, 600, 400], 'Resize', 'off');
ax = axes('Position', [0.1, 0.2, 0.6, 0.7]);
surf(ax, peaks);
cmaps = colormaplist;
listbox = uicontrol('Style', 'listbox', 'Position', [450, 100, 100, 200], 'String', cmaps);
listbox.Callback = @(src, void) colormap(ax, cmaps(src.Value));

``````


#align(center)[#image("colormaplist.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [initial version],
)

// Author: Allan CORNET
