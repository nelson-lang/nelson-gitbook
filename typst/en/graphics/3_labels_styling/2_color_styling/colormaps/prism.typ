#import "../../../nelson_help.typ": *

= prism <graphics:3_labels_styling.2_color_styling.colormaps.prism>

Prism colormap array.

== Syntax

- #raw("c = prism");
- #raw("c = prism(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Prism colormap array.

== Description

#strong[prism]; returns the colormap with prism colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('prism');
``````


#align(center)[#image("prism.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
