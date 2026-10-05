#import "../../nelson_help.typ": *

= uitab <graphics:2_graphics_objects.3_ui_controls.uitab>

Create tab container.

== Syntax

- #raw("h = uitab()");
- #raw("h = uitab(parent)");
- #raw("h = uitab(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: container object.

== Description

#strong[t \= uitab]; creates a tab inside a tab group and returns the Tab object. If the given parent is not a TabGroup, an implicit uitabgroup is created. Main properties: #strong[Title];, #strong[BackgroundColor];, #strong[ForegroundColor];, #strong[Scrollable];. The tab geometry is managed by the parent TabGroup (read-only #strong[Position];).


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Tabs', 'Position', [100 100 420 260]);
tg = uitabgroup(f, 'Position', [55 40 310 180]);
t = uitab(tg, 'Title', 'Data');
uitab(tg, 'Title', 'Options');
uibutton(t, 'Text', 'Apply', 'Position', [25 45 100 28]);
drawnow();
``````


#align(center)[#image("uitab_example.svg")]
uitab

``````matlab

f = uifigure();
tg = uitabgroup(f);
t = uitab(tg, 'Title', 'Settings');
b = uibutton(t, 'Text', 'Apply', 'Position', [20 20 100 22]);

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
