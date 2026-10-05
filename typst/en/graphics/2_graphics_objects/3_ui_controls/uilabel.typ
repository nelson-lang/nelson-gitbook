#import "../../nelson_help.typ": *

= uilabel <graphics:2_graphics_objects.3_ui_controls.uilabel>

Create label component.

== Syntax

- #raw("lbl = uilabel()");
- #raw("lbl = uilabel(parent)");
- #raw("lbl = uilabel(..., propertyName, propertyValue)");

== Input argument

/ parent: figure created with uifigure, or figure graphics object.
/ propertyName: property name: a scalar string or row vector character.
/ propertyValue: property value: a value compatible with property name.

== Output argument

/ lbl: a Label object.

== Description

#strong[lbl \= uilabel]; creates a label in a new figure and returns the Label object. Nelson calls the uifigure function to create the figure.

 #strong[lbl \= uilabel(parent)]; creates the label in the specified parent container.

 #strong[lbl \= uilabel(..., propertyName, propertyValue)]; specifies label properties as one or more name-value arguments: #strong[Text];, #strong[Interpreter];, #strong[HorizontalAlignment];, #strong[VerticalAlignment];, #strong[WordWrap];, #strong[FontName];, #strong[FontSize];, #strong[FontWeight];, #strong[FontAngle];, #strong[FontColor];, #strong[BackgroundColor];, #strong[Enable];, #strong[Visible];, #strong[Tooltip];, #strong[Position];, ...


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Labels', 'Position', [100 100 460 280]);
titleLabel = uilabel(f, 'Text', 'Sensor status', 'FontSize', 18, 'FontWeight', 'bold', 'BackgroundColor', [0.88 0.94 1.00], 'Position', [55 165 350 42]);
valueLabel = uilabel(f, 'Text', '42.5 C', 'FontSize', 32, 'FontWeight', 'bold', 'FontColor', [0.10 0.35 0.72], 'HorizontalAlignment', 'center', 'BackgroundColor', [0.94 0.96 0.98], 'Position', [55 85 350 64]);
drawnow();
``````


#align(center)[#image("uilabel_example.svg")]
Label in a uifigure

``````matlab

f = uifigure();
lbl = uilabel(f, 'Text', 'Result:', 'Position', [100 100 100 22], 'FontWeight', 'bold')

``````


== See also

#nlink(<graphics:2_graphics_objects.3_ui_controls.uibutton>)[uibutton];, #nlink(<gui:uifigure>)[uifigure];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
