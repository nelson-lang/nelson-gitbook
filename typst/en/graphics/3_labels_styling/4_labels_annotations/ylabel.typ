#import "../../nelson_help.typ": *

= ylabel <graphics:3_labels_styling.4_labels_annotations.ylabel>

Label y-axis.

== Syntax

- #raw("ylabel(text)");
- #raw("ylabel(ax, text)");
- #raw("ylabel(..., propertyName, propertyValue)");
- #raw("go = ylabel(...)");

== Input argument

/ text: Text to display: character vector, string scalar, string array or cell array.
/ ax: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: text type.

== Description

#strong[ylabel('text')]; labels the y-axis of the current axes.


== Example

``````matlab
f = figure();
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
ylabel('Y axis Label - Unicode ドラゴンボールY(ゼット)')
``````


#align(center)[#image("ylabel.svg")]

== See also

#nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[text];, #nlink(<graphics:3_labels_styling.4_labels_annotations.title>)[title];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
