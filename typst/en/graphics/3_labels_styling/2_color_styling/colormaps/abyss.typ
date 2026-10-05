#import "../../../nelson_help.typ": *

= abyss <graphics:3_labels_styling.2_color_styling.colormaps.abyss>

Abyss colormap array.

== Syntax

- #raw("c = abyss");
- #raw("c = abyss(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Abyss colormap array.

== Description

#strong[abyss]; returns the colormap with abyss colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('abyss');
``````


#align(center)[#image("abyss.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
