#import "../../nelson_help.typ": *

= uicheckbox <graphics:2_graphics_objects.3_ui_controls.uicheckbox>

Create check box component.

== Syntax

- #raw("h = uicheckbox()");
- #raw("h = uicheckbox(parent)");
- #raw("h = uicheckbox(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI component object.

== Description

#strong[cbx \= uicheckbox]; creates a check box with a logical #strong[Value];, a #strong[Text]; label, #strong[WordWrap];, fonts and a #strong[ValueChangedFcn]; callback (event data: #strong[Value];, #strong[PreviousValue];).


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Check box', 'Position', [100 100 420 260]);
cb = uicheckbox(f, 'Text', 'Enable alerts', 'Value', true, 'Position', [130 120 170 24]);
drawnow();
``````


#align(center)[#image("uicheckbox_example.svg")]
uicheckbox

``````matlab

f = uifigure();
cbx = uicheckbox(f, 'Text', 'Accept', 'Value', true, 'ValueChangedFcn', @(s, e) disp(e.Value));

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
