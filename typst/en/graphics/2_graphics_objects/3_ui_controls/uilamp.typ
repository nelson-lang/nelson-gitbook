#import "../../nelson_help.typ": *

= uilamp <graphics:2_graphics_objects.3_ui_controls.uilamp>

Create lamp component.

== Syntax

- #raw("h = uilamp()");
- #raw("h = uilamp(parent)");
- #raw("h = uilamp(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI component object.

== Description

#strong[lmp \= uilamp]; creates a lamp, a display-only circular indicator whose #strong[Color]; reflects a state.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Lamp', 'Position', [100 100 420 260]);
lbl = uilabel(f, 'Text', 'Ready', 'Position', [150 120 80 24]);
lmp = uilamp(f, 'Position', [235 122 20 20]);
lmp.Color = 'green';
drawnow();
``````


#align(center)[#image("uilamp_example.svg")]
uilamp

``````matlab

f = uifigure();
lmp = uilamp(f, 'Color', 'red');

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
