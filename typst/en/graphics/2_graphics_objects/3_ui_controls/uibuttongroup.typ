#import "../../nelson_help.typ": *

= uibuttongroup <graphics:2_graphics_objects.3_ui_controls.uibuttongroup>

Create button group container.

== Syntax

- #raw("h = uibuttongroup()");
- #raw("h = uibuttongroup(parent)");
- #raw("h = uibuttongroup(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: container object.

== Description

#strong[bg \= uibuttongroup]; creates a button group container used to manage exclusive selection of radio buttons and toggle buttons. Main properties: #strong[Title];, #strong[TitlePosition];, #strong[SelectedObject];, #strong[Buttons]; (read-only), #strong[SelectionChangedFcn]; (event data with #strong[OldValue]; and #strong[NewValue];), plus panel-style border and font properties.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Button group', 'Position', [100 100 420 260]);
bg = uibuttongroup(f, 'Position', [90 55 240 150]);
r1 = uiradiobutton(bg, 'Text', 'Low', 'Position', [20 95 120 22]);
r2 = uiradiobutton(bg, 'Text', 'High', 'Position', [20 55 120 22]);
r2.Value = true;
drawnow();
``````


#align(center)[#image("uibuttongroup_example.svg")]
uibuttongroup

``````matlab

f = uifigure();
bg = uibuttongroup(f, 'Title', 'Choices', 'Position', [20 20 260 210]);

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
