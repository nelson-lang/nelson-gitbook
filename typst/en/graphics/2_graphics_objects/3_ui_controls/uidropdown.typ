#import "../../nelson_help.typ": *

= uidropdown <graphics:2_graphics_objects.3_ui_controls.uidropdown>

Create drop-down component.

== Syntax

- #raw("h = uidropdown()");
- #raw("h = uidropdown(parent)");
- #raw("h = uidropdown(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI component object.

== Description

#strong[dd \= uidropdown]; creates a drop-down list. #strong[Items]; holds the displayed entries; #strong[ItemsData]; optionally maps each entry to a data value returned through #strong[Value];. #strong[ValueIndex]; is the 1-based selection index. #strong[Editable]; 'on' lets the user type free text. Callback #strong[ValueChangedFcn]; (event data: #strong[Value];, #strong[PreviousValue];, #strong[Edited];, #strong[ValueIndex];, #strong[PreviousValueIndex];).


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Drop down', 'Position', [100 100 420 260]);
dd = uidropdown(f, 'Items', {'Small', 'Medium', 'Large'}, 'Position', [125 115 170 24]);
dd.Value = 'Medium';
drawnow();
``````


#align(center)[#image("uidropdown_example.svg")]
uidropdown

``````matlab

f = uifigure();
dd = uidropdown(f, 'Items', {'Red', 'Green', 'Blue'}, 'ItemsData', [1 2 3]);
dd.Value = 2;

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
