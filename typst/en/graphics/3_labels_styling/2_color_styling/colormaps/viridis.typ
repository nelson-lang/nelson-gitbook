#import "../../../nelson_help.typ": *

= viridis <graphics:3_labels_styling.2_color_styling.colormaps.viridis>

Viridis colormap array.

== Syntax

- #raw("c = viridis");
- #raw("c = viridis(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Viridis colormap array.

== Description

#strong[viridis]; returns the colormap with viridis colors.


== Bibliography

Color map created by Stéfan van der Walt and Nathaniel Smith

== Example

``````matlab
f = figure();
surf(peaks);
view(2);
colormap('viridis');
``````


#align(center)[#image("viridis.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
