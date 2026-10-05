#import "../../nelson_help.typ": *

= uiswitch <graphics:2_graphics_objects.3_ui_controls.uiswitch>

Create switch component (slider, rocker, toggle).

== Syntax

- #raw("h = uiswitch()");
- #raw("h = uiswitch(parent)");
- #raw("h = uiswitch(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI component object.

== Description

#strong[sw \= uiswitch(parent, style)]; creates a two-state switch: styles #strong['slider']; (default), #strong['rocker'];, #strong['toggle'];. #strong[Items]; holds the two state labels; #strong[Value];\/#strong[ValueIndex];\/#strong[ItemsData]; follow the usual mapping; #strong[ValueChangedFcn]; reports changes.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Switches', 'Position', [100 100 520 300]);
sw = uiswitch(f, 'Position', [120 135 90 32]);
sw.Value = 'On';
rsw = uiswitch(f, 'rocker');
rsw.Position = [300 90 48 100];
rsw.Value = 'On';
drawnow();
``````


#align(center)[#image("uiswitch_example.svg")]
uiswitch

``````matlab

f = uifigure();
sw = uiswitch(f, 'Items', {'Stop', 'Go'});
sw.Value = 'Go';

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
