#import "../../nelson_help.typ": *

= title <graphics:3_labels_styling.4_labels_annotations.title>

Add title.

== Syntax

- #raw("title(text)");
- #raw("title(ax, text)");
- #raw("title(..., propertyName, propertyValue)");
- #raw("go = title(...)");

== Input argument

/ text: Text to display: character vector, string scalar, string array or cell array.
/ ax: a scalar graphics object value: parent container, specified as a axes.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: text type.

== Description

#strong[title('text')]; adds the title to the current axes.

 #strong[Visible]; property is inherited from the parent if not explicitly defined.


== Example

``````matlab
f = figure();
x = linspace(-1, 1);
y = sin(2*pi*x);
plot(x, y);
title('Unicode ドラゴンボールZ(ゼット)', 'FontSize', 14);
``````


#align(center)[#image("title.svg")]

== See also

#nlink(<graphics:3_labels_styling.4_labels_annotations.text>)[text];, #nlink(<graphics:3_labels_styling.4_labels_annotations.xlabel>)[xlabel];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.10.0], [Visible property is inherited from the parent if not explicitly defined.],
)

// Author: Allan CORNET
