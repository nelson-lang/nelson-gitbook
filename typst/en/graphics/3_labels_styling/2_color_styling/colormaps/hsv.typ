#import "../../../nelson_help.typ": *

= hsv <graphics:3_labels_styling.2_color_styling.colormaps.hsv>

Hue-saturation-value colormap array.

== Syntax

- #raw("c = hsv");
- #raw("c = hsv(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Hue-saturation-value colormap array.

== Description

#strong[hsv]; returns a colormap that varies the hue around the color wheel.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('hsv');
``````


#align(center)[#image("hsv.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
