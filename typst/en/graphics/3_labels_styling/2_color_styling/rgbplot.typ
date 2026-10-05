#import "../../nelson_help.typ": *

= rgbplot <graphics:3_labels_styling.2_color_styling.rgbplot>

Plot colormap.

== Syntax

- #raw("rgbplot(cmap)");

== Input argument

/ cmap: Colormap: three-column matrix of RGB triplets .

== Description

#strong[rgbplot(cmap)]; plots the R (red), G (green), and B (blue) intensities of the specified#strong[cmap]; colormap.


== Example

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

== See also

#nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
