#import "../../../nelson_help.typ": *

= colorcube <graphics:3_labels_styling.2_color_styling.colormaps.colorcube>

Enhanced RGB color cube colormap array.

== Syntax

- #raw("c = colorcube");
- #raw("c = colorcube(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Enhanced RGB color cube colormap array.

== Description

#strong[colorcube]; returns a colormap built from RGB cube colors, pure color ramps, black, and gray levels.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('colorcube');
``````


#align(center)[#image("colorcube.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
