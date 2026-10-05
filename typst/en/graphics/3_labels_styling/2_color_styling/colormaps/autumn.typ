#import "../../../nelson_help.typ": *

= autumn <graphics:3_labels_styling.2_color_styling.colormaps.autumn>

Autumn colormap array.

== Syntax

- #raw("c = autumn");
- #raw("c = autumn(m)");

== Input argument

/ m: a scalar integer value: Number of colors (256 as default value).

== Output argument

/ c: Autumn colormap array.

== Description

#strong[autumn]; returns the colormap with autumn colors.


== Example

``````matlab
f = figure();
surf(peaks);
colormap('autumn');
``````


#align(center)[#image("autumn.svg")]

== See also

#nlink(<graphics:3_labels_styling.2_color_styling.colormaps.colormap>)[colormap];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
