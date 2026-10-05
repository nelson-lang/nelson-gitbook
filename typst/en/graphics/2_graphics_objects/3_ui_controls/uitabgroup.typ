#import "../../nelson_help.typ": *

= uitabgroup <graphics:2_graphics_objects.3_ui_controls.uitabgroup>

Create tab group container.

== Syntax

- #raw("h = uitabgroup()");
- #raw("h = uitabgroup(parent)");
- #raw("h = uitabgroup(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container (uifigure, figure, uipanel, uitab, uibuttongroup, uigridlayout).
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: container object.

== Description

#strong[tg \= uitabgroup]; creates a tab group container. Children are uitab objects. Main properties: #strong[TabLocation]; ('top', 'bottom', 'left', 'right'), #strong[SelectedTab];, #strong[SelectionChangedFcn]; (event data with #strong[OldValue]; and #strong[NewValue];).


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Tab group', 'Position', [100 100 420 260]);
tg = uitabgroup(f, 'Position', [55 40 310 180]);
t1 = uitab(tg, 'Title', 'First');
t2 = uitab(tg, 'Title', 'Second');
tg.SelectedTab = t2;
uilabel(t2, 'Text', 'Second tab', 'Position', [35 70 120 24]);
drawnow();
``````


#align(center)[#image("uitabgroup_example.svg")]
uitabgroup

``````matlab

f = uifigure();
tg = uitabgroup(f, 'Position', [20 20 250 210]);
t1 = uitab(tg, 'Title', 'First');
t2 = uitab(tg, 'Title', 'Second');
tg.SelectedTab = t2;

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
