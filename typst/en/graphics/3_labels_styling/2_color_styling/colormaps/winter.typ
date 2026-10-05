#import "../../../nelson_help.typ": *

= winter <graphics:3_labels_styling.2_color_styling.colormaps.winter>

Winter colormap array.

== Syntax

- #raw("c = winter");
- #raw("c = winter(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Winter colormap array.

== Description

#strong[winter]; returns the colormap with winter colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('winter');
``````


#align(center)[#image("winter.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
