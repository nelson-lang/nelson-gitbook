#import "../../nelson_help.typ": *

= zlabel <graphics:3_labels_styling.4_labels_annotations.zlabel>

Label z-axis.

== Syntax

- #raw("zlabel(text)");
- #raw("zlabel(ax, text)");
- #raw("zlabel(..., propertyName, propertyValue)");
- #raw("go = zlabel(...)");

== Input argument

/ text: Text to display: character vector, string scalar, string array or cell array.
/ ax: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: text type.

== Description

#strong[zlabel('text')]; labels the z-axis of the current axes.


== Example

``````matlab
f  = figure();
t = 0:pi/50:10*pi;
L = plot3(sin(t), cos(t), t);
axis square
zlabel('Z axis Label - Unicode ドラゴンボールZ(ゼット)')
``````


#align(center)[#image("zlabel.svg")]

== See also

#nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[text];, #nlink(<graphics:3_labels_styling.4_labels_annotations.title>)[title];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
