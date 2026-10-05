#import "../../nelson_help.typ": *

= clim <graphics:3_labels_styling.2_color_styling.clim>

Set colormap limits.

== Syntax

- #raw("clim(limits)");
- #raw("clim('auto')");
- #raw("clim('manual')");
- #raw("clim(ax, ...)");
- #raw("lims = clim()");

== Input argument

/ limits: New limits: \[cmin cmax\].
/ 'auto': enables automatic limit updates when values in the colormap indexing array change.
/ 'manual': disables automatic limit update.
/ ax: Target object: axes graphics object.

== Output argument

/ lims: \[cmin cmax\]

== Description

#strong[clim]; set or get colormap limits.


== Examples

``````matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = X .^ 2 + Y .^ 2;
surf(Z);
limits = clim()

``````


#align(center)[#image("clim_1.svg")]
``````matlab
f = figure();
[X,Y] = meshgrid(-5:.5:5);
Z = X.^2 + Y.^2;
surf(Z);
clim([25 75])
limits = clim()

``````


#align(center)[#image("clim_2.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];, #nlink(<graphics:3_labels_styling.4_labels_annotations.colorbar>)[colorbar];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
