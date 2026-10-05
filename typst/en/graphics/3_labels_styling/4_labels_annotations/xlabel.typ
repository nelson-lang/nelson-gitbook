#import "../../nelson_help.typ": *

= xlabel <graphics:3_labels_styling.4_labels_annotations.xlabel>

Label x-axis.

== Syntax

- #raw("xlabel(text)");
- #raw("xlabel(ax, text)");
- #raw("xlabel(..., propertyName, propertyValue)");
- #raw("go = xlabel(...)");

== Input argument

/ text: Text to display: character vector, string scalar, string array or cell array.
/ ax: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: text type.

== Description

#strong[xlabel('text')]; labels the x-axis of the current axes.


== Example

``````matlab
f = figure();
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
xlabel('X axis Label - Unicode ドラゴンボールX(ゼット)')
``````


#align(center)[#image("xlabel.svg")]

== See also

#nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[text];, #nlink(<graphics:3_labels_styling.4_labels_annotations.title>)[title];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
