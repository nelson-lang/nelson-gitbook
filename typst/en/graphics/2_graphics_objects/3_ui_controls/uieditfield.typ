#import "../../nelson_help.typ": *

= uieditfield <graphics:2_graphics_objects.3_ui_controls.uieditfield>

Create text or numeric edit field.

== Syntax

- #raw("h = uieditfield()");
- #raw("h = uieditfield(parent)");
- #raw("h = uieditfield(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI component object.

== Description

#strong[ef \= uieditfield]; creates a text edit field; #strong[uieditfield(parent, 'numeric')]; creates a numeric edit field. Text style: #strong[Value]; (char), #strong[CharacterLimits];, #strong[InputType];, #strong[ValueChangingFcn];. Numeric style: #strong[Value]; (double), #strong[Limits];, #strong[LowerLimitInclusive];\/#strong[UpperLimitInclusive];, #strong[RoundFractionalValues];, #strong[ValueDisplayFormat];, #strong[AllowEmpty];. Both: #strong[Editable];, #strong[HorizontalAlignment];, #strong[Placeholder];, #strong[ValueChangedFcn];.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Edit fields', 'Position', [100 100 420 260]);
ef = uieditfield(f, 'Position', [95 135 230 24]);
ef.Value = 'Sample text';
nf = uieditfield(f, 'numeric', 'Position', [95 90 120 24]);
nf.Value = 42.5;
drawnow();
``````


#align(center)[#image("uieditfield_example.svg")]
uieditfield

``````matlab

f = uifigure();
ef = uieditfield(f, 'Value', 'hello');
nef = uieditfield(f, 'numeric', 'Limits', [0 100], 'Value', 42);

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
