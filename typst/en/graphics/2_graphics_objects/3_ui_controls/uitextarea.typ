#import "../../nelson_help.typ": *

= uitextarea <graphics:2_graphics_objects.3_ui_controls.uitextarea>

Create text area component.

== Syntax

- #raw("h = uitextarea()");
- #raw("h = uitextarea(parent)");
- #raw("h = uitextarea(..., propertyName, propertyValue)");

== Input argument

/ parent: parent container.
/ propertyName, propertyValue: name-value pairs.

== Output argument

/ h: UI component object.

== Description

#strong[ta \= uitextarea]; creates a multi-line text area. #strong[Value]; is a cell array of character vectors (one per line). Properties: #strong[Editable];, #strong[WordWrap];, #strong[HorizontalAlignment];, #strong[Placeholder];, #strong[ValueChangedFcn];, #strong[ValueChangingFcn];.


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Text area', 'Position', [100 100 420 260]);
ta = uitextarea(f, 'Position', [95 75 230 115]);
ta.Value = {'Line one'; 'Line two'; 'Line three'};
drawnow();
``````


#align(center)[#image("uitextarea_example.svg")]
uitextarea

``````matlab

f = uifigure();
ta = uitextarea(f, 'Value', {'first line', 'second line'});

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
