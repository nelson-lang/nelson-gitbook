#import "../../nelson_help.typ": *

= uitogglebutton <graphics:2_graphics_objects.3_ui_controls.uitogglebutton>

Create toggle button in a button group.

== Syntax

- #raw("h = uitogglebutton()");
- #raw("h = uitogglebutton(parent)");
- #raw("h = uitogglebutton(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI component object.

== Description

#strong[tb \= uitogglebutton(bg)]; creates a toggle button inside a uibuttongroup with exclusive selection. Properties: #strong[Value];, #strong[Text];, #strong[Icon];, #strong[IconAlignment];, alignments, #strong[BackgroundColor];, fonts.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Toggle buttons', 'Position', [100 100 420 260]);
bg = uibuttongroup(f, 'Position', [95 60 230 140]);
tb1 = uitogglebutton(bg, 'Text', 'A', 'Position', [30 70 70 30]);
tb2 = uitogglebutton(bg, 'Text', 'B', 'Position', [125 70 70 30]);
tb2.Value = true;
drawnow();
``````


#align(center)[#image("uitogglebutton_example.svg")]
uitogglebutton

``````matlab

f = uifigure();
bg = uibuttongroup(f);
tb1 = uitogglebutton(bg, 'Text', 'A');
tb2 = uitogglebutton(bg, 'Text', 'B');

``````


== See also

#nlink(<gui:uifigure>)[uifigure];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
