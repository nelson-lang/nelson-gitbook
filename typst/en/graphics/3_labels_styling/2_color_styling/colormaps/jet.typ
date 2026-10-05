#import "../../../nelson_help.typ": *

= jet <graphics:3_labels_styling.2_color_styling.colormaps.jet>

Jet colormap array.

== Syntax

- #raw("c = jet");
- #raw("c = jet(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Jet colormap array.

== Description

#strong[jet]; returns the colormap with jet colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('jet');
``````


#align(center)[#image("jet.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
