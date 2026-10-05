#import "../../nelson_help.typ": *

= uibutton <graphics:2_graphics_objects.3_ui_controls.uibutton>

Create push button or state button component.

== Syntax

- #raw("btn = uibutton()");
- #raw("btn = uibutton(style)");
- #raw("btn = uibutton(parent)");
- #raw("btn = uibutton(parent, style)");
- #raw("btn = uibutton(..., propertyName, propertyValue)");

== Input argument

/ parent: figure created with uifigure, or figure graphics object.
/ style: button style: 'push' (default) or 'state'.
/ propertyName: property name: a scalar string or row vector character.
/ propertyValue: property value: a value compatible with property name.

== Output argument

/ btn: a Button or StateButton object.

== Description

#strong[btn \= uibutton]; creates a push button in a new figure and returns the Button object. Nelson calls the uifigure function to create the figure.

 #strong[btn \= uibutton(style)]; creates a button of the specified style: #strong['push']; creates a push button (Button object, #strong[ButtonPushedFcn]; callback), #strong['state']; creates a state button (StateButton object, with a boolean #strong[Value]; and a #strong[ValueChangedFcn]; callback).

 #strong[btn \= uibutton(parent)]; creates the button in the specified parent container.

 #strong[btn \= uibutton(..., propertyName, propertyValue)]; specifies properties as one or more name-value arguments: #strong[Text];, #strong[Icon];, #strong[IconAlignment];, #strong[HorizontalAlignment];, #strong[VerticalAlignment];, #strong[WordWrap];, #strong[FontName];, #strong[FontSize];, #strong[FontWeight];, #strong[FontAngle];, #strong[FontColor];, #strong[BackgroundColor];, #strong[Enable];, #strong[Visible];, #strong[Tooltip];, #strong[Position];, #strong[ButtonPushedFcn]; (push), #strong[Value]; and #strong[ValueChangedFcn]; (state), ...


== Examples

Captured UI component for the help image.

``````matlab
f = uifigure('Visible', 'off', 'Name', 'Buttons', 'Position', [100 100 420 260]);
btn = uibutton(f, 'Text', 'Run', 'Position', [85 130 110 30]);
sb = uibutton(f, 'state', 'Text', 'Enabled', 'Value', true, 'Position', [225 130 110 30]);
drawnow();
``````


#align(center)[#image("uibutton_example.svg")]
Push button with callback

``````matlab

f = uifigure();
btn = uibutton(f, 'Text', 'Click me', 'Position', [100 100 100 22], 'ButtonPushedFcn', @(src, event) disp('pushed'))

``````

State button

``````matlab

f = uifigure();
sb = uibutton(f, 'state', 'Text', 'Enable option', 'Value', true)

``````


== See also

#nlink(<graphics:2_graphics_objects.3_ui_controls.uilabel>)[uilabel];, #nlink(<gui:uifigure>)[uifigure];, #nlink(<graphics:2_graphics_objects.3_ui_controls.uicontrol>)[uicontrol];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
