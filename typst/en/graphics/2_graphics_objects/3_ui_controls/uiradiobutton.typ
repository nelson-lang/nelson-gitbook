#import "../../nelson_help.typ": *

= uiradiobutton <graphics:2_graphics_objects.3_ui_controls.uiradiobutton>

Create radio button in a button group.

== Syntax

- #raw("h = uiradiobutton()");
- #raw("h = uiradiobutton(parent)");
- #raw("h = uiradiobutton(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI component object.

== Description

#strong[rb \= uiradiobutton(bg)]; creates a radio button inside a uibuttongroup. The first button added to a group is selected. Selection is exclusive; changes are reported by the group #strong[SelectionChangedFcn];. Properties: #strong[Value]; (logical), #strong[Text];, #strong[WordWrap];, fonts.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Radio buttons', 'Position', [100 100 420 260]);
bg = uibuttongroup(f, 'Position', [95 55 230 150]);
r1 = uiradiobutton(bg, 'Text', 'Metric', 'Position', [25 95 120 22]);
r2 = uiradiobutton(bg, 'Text', 'Imperial', 'Position', [25 55 120 22]);
r1.Value = true;
drawnow();
``````


#align(center)[#image("uiradiobutton_example.svg")]
uiradiobutton

``````matlab

f = uifigure();
bg = uibuttongroup(f, 'Title', 'Options');
rb1 = uiradiobutton(bg, 'Text', 'First');
rb2 = uiradiobutton(bg, 'Text', 'Second');
rb2.Value = true;

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
