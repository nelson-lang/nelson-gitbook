#import "../../nelson_help.typ": *

= uipanel <graphics:2_graphics_objects.3_ui_controls.uipanel>

Create panel container.

== Syntax

- #raw("h = uipanel()");
- #raw("h = uipanel(parent)");
- #raw("h = uipanel(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: container object.

== Description

#strong[p \= uipanel]; creates a panel container in a new figure (uifigure). A panel groups UI components; children are positioned relative to the panel. Main properties: #strong[Title];, #strong[TitlePosition]; ('lefttop', 'centertop', 'righttop'), #strong[BackgroundColor];, #strong[ForegroundColor];, #strong[BorderType]; ('line', 'none'), #strong[BorderWidth];, #strong[BorderColor];, #strong[Position];, #strong[Scrollable];, #strong[AutoResizeChildren];, #strong[SizeChangedFcn];.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Panel', 'Position', [100 100 420 260]);
p = uipanel(f, 'Title', 'Settings', 'Position', [80 45 260 170]);
uicheckbox(p, 'Text', 'Enabled', 'Value', true, 'Position', [25 95 120 24]);
uibutton(p, 'Text', 'Apply', 'Position', [25 45 100 28]);
drawnow();
``````


#align(center)[#image("uipanel_example.svg")]
uipanel

``````matlab

f = uifigure();
p = uipanel(f, 'Title', 'Options', 'Position', [20 20 260 221]);
b = uibutton(p, 'Text', 'OK', 'Position', [20 20 100 22]);

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
