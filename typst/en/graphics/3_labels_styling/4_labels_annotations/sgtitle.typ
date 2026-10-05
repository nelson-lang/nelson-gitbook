#import "../../nelson_help.typ": *

= sgtitle <graphics:3_labels_styling.4_labels_annotations.sgtitle>

Add a shared title to a graphics layout.

== Syntax

- #raw("sgtitle(text)");
- #raw("sgtitle(target, text)");
- #raw("sgtitle(..., propertyName, propertyValue)");
- #raw("go = sgtitle(...)");

== Input argument

/ text: Text to display.
/ target: A tiled layout or axes graphics object.
/ propertyName: Text object property name.
/ propertyValue: Text object property value.

== Output argument

/ go: A graphics object for the shared title.

== Description

#strong[sgtitle]; adds a shared title to the current tiled layout when one exists. Otherwise, it adds a shared title above the subplot axes in the current figure.


== Examples

Shared title for a subplot grid.

``````matlab
f = figure();
subplot(2, 2, 1)
title('First Subplot')
subplot(2, 2, 2)
title('Second Subplot')
subplot(2, 2, 3)
title('Third Subplot')
subplot(2, 2, 4)
title('Fourth Subplot')
sgtitle('Subplot Grid Title')
``````


#align(center)[#image("sgtitle_1.svg")]
Set shared title properties.

``````matlab
f = figure();
subplot(2, 1, 1)
title('First Subplot')
subplot(2, 1, 2)
title('Second Subplot')
sgt = sgtitle('Subplot Grid Title', 'Color', 'red');
sgt.FontSize = 20;
``````


#align(center)[#image("sgtitle_2.svg")]
Shared title for a tiled layout.

``````matlab
t = tiledlayout(2, 1);
nexttile(t);
plot(1:10);
nexttile(t);
plot((1:10).^2);
sgtitle(t, 'Shared title');
``````


== See also

#nlink(<graphics:3_labels_styling.4_labels_annotations.title>)[title];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tiledlayout>)[tiledlayout];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
