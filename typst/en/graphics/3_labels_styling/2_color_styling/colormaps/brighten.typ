#import "../../../nelson_help.typ": *

= brighten <graphics:3_labels_styling.2_color_styling.colormaps.brighten>

Brighten or darken a colormap.

== Syntax

- #raw("brighten(beta)");
- #raw("brighten(ax, beta)");
- #raw("newmap = brighten(beta)");
- #raw("newmap = brighten(map, beta)");

== Input argument

/ beta: Scalar in the interval (-1, 1). Positive brightens, negative darkens.
/ map: Colormap, an M-by-3 matrix of RGB values in \[0, 1\].
/ ax: Target axes or figure whose colormap is modified.

== Output argument

/ newmap: Brightened colormap.

== Description

#strong[brighten]; increases (#strong[beta]; \> 0) or decreases (#strong[beta]; \< 0) the brightness of a colormap. With no output argument it replaces the colormap of the current figure (or of #strong[ax];); with an output it returns the modified colormap. As #strong[beta]; approaches 1 the colors approach white, and as it approaches -1 they approach black.


== Used function(s)

colormap

== Example

``````matlab
f = figure();
surf(peaks());
colormap(jet());
brighten(0.5);
``````


== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
