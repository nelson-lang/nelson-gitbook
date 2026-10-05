#import "../../nelson_help.typ": *

= uiknob <graphics:2_graphics_objects.3_ui_controls.uiknob>

Create knob or discrete knob component.

== Syntax

- #raw("h = uiknob()");
- #raw("h = uiknob(parent)");
- #raw("h = uiknob(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI component object.

== Description

#strong[kb \= uiknob]; creates a continuous knob (#strong[Value];\/#strong[Limits];\/ticks\/#strong[ValueChangingFcn];); #strong[uiknob(parent, 'discrete')]; creates a discrete knob using #strong[Items];\/#strong[ItemsData];\/#strong[ValueIndex];.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Knobs', 'Position', [100 100 620 360]);
kb = uiknob(f);
kb.Position = [70 90 170 170];
kb.Value = 55;
dk = uiknob(f, 'discrete');
dk.Position = [310 70 260 220];
dk.Value = 'Medium';
drawnow();
``````


#align(center)[#image("uiknob_example.svg")]
uiknob

``````matlab

f = uifigure();
kb = uiknob(f, 'Value', 30);
dk = uiknob(f, 'discrete', 'Items', {'Low', 'High'});

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
