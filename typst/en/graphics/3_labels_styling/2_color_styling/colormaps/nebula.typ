#import "../../../nelson_help.typ": *

= nebula <graphics:3_labels_styling.2_color_styling.colormaps.nebula>

Nebula colormap array.

== Syntax

- #raw("c = nebula");
- #raw("c = nebula(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Nebula colormap array.

== Description

#strong[nebula]; returns the colormap with nebula colors.


== Example

``````matlab
f = figure();
n = 256;
cmap = nebula(n);
colormap(cmap);
imagesc(peaks(100));
colorbar;
title(['Nebula Colormap with ', num2str(n), ' Colors']);
``````


#align(center)[#image("nebula.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [initial version],
)

// Author: Allan CORNET
