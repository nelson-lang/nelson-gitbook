#import "../../../nelson_help.typ": *

= copper <graphics:3_labels_styling.2_color_styling.colormaps.copper>

Copper colormap array.

== Syntax

- #raw("c = copper");
- #raw("c = copper(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Copper colormap array.

== Description

#strong[copper]; returns the colormap with copper colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('copper');
``````


#align(center)[#image("copper.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
