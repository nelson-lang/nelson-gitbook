#import "../../nelson_help.typ": *

= uispinner <graphics:2_graphics_objects.3_ui_controls.uispinner>

Create spinner component.

== Syntax

- #raw("h = uispinner()");
- #raw("h = uispinner(parent)");
- #raw("h = uispinner(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI component object.

== Description

#strong[spn \= uispinner]; creates a numeric spinner. Properties: #strong[Value];, #strong[Step];, #strong[Limits];, #strong[LowerLimitInclusive];\/#strong[UpperLimitInclusive];, #strong[RoundFractionalValues];, #strong[ValueDisplayFormat];, #strong[AllowEmpty];, #strong[Editable];, #strong[ValueChangedFcn];, #strong[ValueChangingFcn];.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Spinners', 'Position', [100 100 460 280]);
uilabel(f, 'Text', 'Quantity', 'FontWeight', 'bold', 'Position', [80 185 100 24]);
qty = uispinner(f, 'Value', 8, 'Step', 1, 'Limits', [0 20], 'Position', [210 180 130 30]);
uilabel(f, 'Text', 'Ratio', 'FontWeight', 'bold', 'Position', [80 130 100 24]);
ratio = uispinner(f, 'Value', 0.75, 'Step', 0.05, 'Limits', [0 1], 'Position', [210 125 130 30]);
drawnow();
``````


#align(center)[#image("uispinner_example.svg")]
uispinner

``````matlab

f = uifigure();
spn = uispinner(f, 'Value', 5, 'Step', 0.5, 'Limits', [0 10]);

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
