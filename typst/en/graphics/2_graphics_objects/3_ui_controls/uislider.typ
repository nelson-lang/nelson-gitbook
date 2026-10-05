#import "../../nelson_help.typ": *

= uislider <graphics:2_graphics_objects.3_ui_controls.uislider>

Create slider or range slider component.

== Syntax

- #raw("h = uislider()");
- #raw("h = uislider(parent)");
- #raw("h = uislider(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI component object.

== Description

#strong[sld \= uislider]; creates a slider; #strong[uislider(parent, 'range')]; creates a range slider whose #strong[Value]; is a two-element vector. Properties: #strong[Value];, #strong[Limits];, #strong[Orientation];, #strong[MajorTicks];\/#strong[MinorTicks];\/#strong[MajorTickLabels]; with auto\/manual modes, #strong[Step];\/#strong[StepMode];, #strong[ValueChangedFcn];, #strong[ValueChangingFcn];.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Slider', 'Position', [100 100 520 300]);
sld = uislider(f, 'Position', [90 165 300 30]);
sld.Value = 42;
rs = uislider(f, 'range');
rs.Position = [90 95 300 30];
rs.Value = [20 70];
drawnow();
``````


#align(center)[#image("uislider_example.svg")]
uislider

``````matlab

f = uifigure();
sld = uislider(f, 'Limits', [0 10], 'Value', 4);
rs = uislider(f, 'range', 'Value', [20 60]);

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
