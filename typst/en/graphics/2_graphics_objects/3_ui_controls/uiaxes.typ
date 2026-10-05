#import "../../nelson_help.typ": *

= uiaxes <graphics:2_graphics_objects.3_ui_controls.uiaxes>

Create axes for App Designer style apps.

== Syntax

- #raw("ax = uiaxes()");
- #raw("ax = uiaxes(parent)");
- #raw("ax = uiaxes(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ ax: axes object.

== Description

#strong[ax \= uiaxes]; creates axes suitable for uifigure based apps and returns the axes object. It behaves like #strong[axes]; with UIAxes defaults: #strong[Units]; \= 'pixels', #strong[Position]; \= \[10 10 400 300\], #strong[NextPlot]; \= 'replacechildren', #strong[FontUnits]; \= 'pixels'. Pass the axes to plotting functions: #strong[plot(ax, ...)];.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Axes UI', 'Position', [100 100 420 260]);
f.HandleVisibility = 'on';
ax = uiaxes(f, 'Position', [45 45 330 175]);
x = 0:0.1:2*pi;
plot(ax, x, sin(x), 'LineWidth', 1.5);
title(ax, 'Sine');
drawnow();
``````


#align(center)[#image("uiaxes_example.svg")]
uiaxes

``````matlab

f = uifigure();
ax = uiaxes(f, 'Position', [30 30 400 300]);
plot(ax, 1:10, (1:10).^2);

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
