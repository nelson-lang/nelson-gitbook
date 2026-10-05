#import "../../nelson_help.typ": *

= uilistbox <graphics:2_graphics_objects.3_ui_controls.uilistbox>

Create list box component.

== Syntax

- #raw("h = uilistbox()");
- #raw("h = uilistbox(parent)");
- #raw("h = uilistbox(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI component object.

== Description

#strong[lb \= uilistbox]; creates a list box. #strong[Items];\/#strong[ItemsData]; follow the drop-down mapping rules; #strong[Multiselect]; 'on' allows multiple selection (cell #strong[Value];). Callback #strong[ValueChangedFcn]; (event data: #strong[Value];, #strong[PreviousValue];, #strong[ValueIndex];, #strong[PreviousValueIndex];).


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'List box', 'Position', [100 100 420 260]);
lb = uilistbox(f, 'Items', {'Option 1', 'Option 2', 'Option 3'}, 'Position', [130 65 160 120]);
lb.Value = 'Option 2';
drawnow();
``````


#align(center)[#image("uilistbox_example.svg")]
uilistbox

``````matlab

f = uifigure();
lb = uilistbox(f, 'Items', {'Item 1', 'Item 2', 'Item 3'}, 'Multiselect', 'on');
lb.Value = {'Item 1', 'Item 3'};

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
