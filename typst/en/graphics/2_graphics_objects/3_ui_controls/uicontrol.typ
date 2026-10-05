#import "../../nelson_help.typ": *

= uicontrol <graphics:2_graphics_objects.3_ui_controls.uicontrol>

Create user interface component.

== Syntax

- #raw("c = uicontrol()");
- #raw("c = uicontrol(propertyName, propertyValue)");
- #raw("c = uicontrol(parent)");
- #raw("c = uicontrol(parent, propertyName, propertyValue, ...)");
- #raw("uicontrol(c)");

== Input argument

/ parent: figure graphics object.
/ propertyName: property name: a scalar string or row vector character.
/ propertyValue: property value: a value compatible with property name.
/ c: an User Interface control object.

== Output argument

/ c: an User Interface control object.

== Description

#strong[c \= uicontrol]; creates a push button, which is the default user interface control, within the current figure and returns the associated uicontrol object. If no figure is currently open, Nelson generates one using the figure function.

 #strong[c \= uicontrol(propertyName, propertyValue)]; creates a user interface control with properties defined by one or more name-value pair arguments. For instance, specifying 'Style', 'button' will create a button.

 #strong[c \= uicontrol(parent)]; creates the default user interface control (push button) within the specified parent container, rather than defaulting to the current figure.

 #strong[c \= uicontrol(parent, propertyName, propertyValue)]; creates a user interface control within the specified parent container, allowing you to define its properties using one or more name-value pair arguments.

 #strong[uicontrol(c)]; sets the focus to a previously defined user interface control, bringing it to the forefront for user interaction.

 

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.uicontrol.properties>)[uicontrol properties]; for the complete property list.


== Examples

Pushbutton

``````matlab

f = figure;
b = uicontrol(f,Style='pushbutton', String='Click Me', Position=[100 100 60 30], Callback='disp(''Hello World!'')')

``````


#align(center)[#image("uicontrol_1.png")]
Checkbox

``````matlab

f = figure();
h = uicontrol(Style='checkbox', String='Click Me!', Position=[100, 100, 100, 50]);

``````


#align(center)[#image("uicontrol_2.png")]
Edit

``````matlab

f = figure();
h = uicontrol(Style='edit', String='Click Me!', Position=[100, 100, 100, 50]);

``````


#align(center)[#image("uicontrol_3.png")]
Image

``````matlab

hFig = figure(Position=[100, 100, 300, 300]);
imgSize = 50;  % Size of the image
[X, Y] = meshgrid(1:imgSize, 1:imgSize);
CData = cat(3, X/imgSize, Y/imgSize, zeros(imgSize));
CData = im2double(CData);  % Ensure the image is of type double
hButton = uicontrol(Style='pushbutton',  Position=[100, 100, 100, 100], CData=CData, String='Click Me!');

``````


#align(center)[#image("uicontrol_4.png")]
uicontrol demo

``````matlab

addpath([modulepath('graphics','root'), '/examples/uicontrol'])
edit uicontrol_demo
uicontrol_demo

``````


#align(center)[#image("uicontrol_5.png")]
uicontrol demo Interruptible

``````matlab

addpath([modulepath('graphics','root'), '/examples/uicontrol'])
edit uicontrol_demo_interruptible
uicontrol_demo_interruptible

``````


#align(center)[#image("uicontrol_6.png")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.uicontrol.properties>)[uicontrol properties];, #nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.graphical_callback>)[Managing Callback Interruptions in Nelson];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.7.0], [initial version],
  [1.14.0], [Units property added],
)

// Author: Allan CORNET
