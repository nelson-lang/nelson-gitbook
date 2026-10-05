#import "../../../nelson_help.typ": *

= parula <graphics:3_labels_styling.2_color_styling.colormaps.parula>

Parula colormap array.

== Syntax

- #raw("c = parula");
- #raw("c = parula(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Parula colormap array.

== Description

#strong[parula]; returns the colormap with parula colors.

 #strong[parula]; is the default colormap.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('parula');
``````


#align(center)[#image("parula.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
