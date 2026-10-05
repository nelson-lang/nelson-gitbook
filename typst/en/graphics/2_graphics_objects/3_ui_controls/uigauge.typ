#import "../../nelson_help.typ": *

= uigauge <graphics:2_graphics_objects.3_ui_controls.uigauge>

Create gauge component (circular, linear, ninetydegree, semicircular).

== Syntax

- #raw("h = uigauge()");
- #raw("h = uigauge(parent)");
- #raw("h = uigauge(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI component object.

== Description

#strong[g \= uigauge(parent, style)]; creates a display-only gauge: styles #strong['circular']; (default), #strong['linear'];, #strong['ninetydegree'];, #strong['semicircular'];. Properties: #strong[Value];, #strong[Limits];, #strong[ScaleColors];\/#strong[ScaleColorLimits];, ticks, #strong[Orientation]; or #strong[ScaleDirection]; depending on the style.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Gauges', 'Position', [100 100 520 320]);
g = uigauge(f);
g.Position = [90 70 180 180];
g.Value = 75;
lg = uigauge(f, 'linear');
lg.Position = [310 145 150 40];
lg.Value = 45;
drawnow();
``````


#align(center)[#image("uigauge_example.svg")]
uigauge

``````matlab

f = uifigure();
g = uigauge(f, 'Value', 75);
lg = uigauge(f, 'linear', 'Orientation', 'vertical');

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
