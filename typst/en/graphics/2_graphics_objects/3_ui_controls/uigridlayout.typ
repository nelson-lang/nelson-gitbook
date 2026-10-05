#import "../../nelson_help.typ": *

= uigridlayout <graphics:2_graphics_objects.3_ui_controls.uigridlayout>

Create grid layout manager.

== Syntax

- #raw("h = uigridlayout()");
- #raw("h = uigridlayout(parent)");
- #raw("h = uigridlayout(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: container object.

== Description

#strong[g \= uigridlayout]; creates a grid layout manager that positions its children in a configurable grid. #strong[g \= uigridlayout(parent, \[r c\])]; creates an r-by-c grid. #strong[RowHeight]; and #strong[ColumnWidth]; accept fixed pixel sizes, weighted sizes ('1x', '2x', ...), and 'fit'. Children are placed via their #strong[Layout.Row]; \/ #strong[Layout.Column]; options (scalar or \[start end\] span); components added without explicit placement fill the grid left to right, top to bottom. Other properties: #strong[RowSpacing];, #strong[ColumnSpacing];, #strong[Padding];, #strong[BackgroundColor];, #strong[Scrollable];.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Grid layout', 'Position', [100 100 420 260]);
g = uigridlayout(f, [2 2]);
b1 = uibutton(g, 'Text', 'One');
b2 = uibutton(g, 'Text', 'Two');
b3 = uibutton(g, 'Text', 'Span');
b3.Layout.Row = 2;
b3.Layout.Column = [1 2];
drawnow();
``````


#align(center)[#image("uigridlayout_example.svg")]
uigridlayout

``````matlab

f = uifigure();
g = uigridlayout(f, [2 2]);
b1 = uibutton(g, 'Text', 'One');
b2 = uibutton(g, 'Text', 'Two');
b3 = uibutton(g, 'Text', 'Span');
b3.Layout.Column = [1 2];
g.RowHeight = {22, '1x'};

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
