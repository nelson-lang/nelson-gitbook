#import "../../nelson_help.typ": *

= waitfor <graphics:3_labels_styling.3_interactions_camera_lighting.waitfor>

Wait for condition.

== Syntax

- #raw("waitfor(obj)");
- #raw("waitfor(obj, propertyName)");
- #raw("waitfor(obj, propertyName, propertyValue)");

== Input argument

/ obj: any scalar graphics object value.
/ propertyName: property name: character vector or string scalar.
/ propertyValue: property value: valid property value associated with propertyName.

== Description

#strong[waitfor(obj)]; pauses the execution of statements until the specified object is closed (or deleted). Once the object is no longer present,#strong[waitfor]; returns, allowing the execution to continue. If the object does not exist at the time of the call,#strong[waitfor]; returns immediately.

 #strong[waitfor(obj, propertyName)]; halts execution until the specified property of the object changes or the object is closed. For example,#strong[waitfor(hFig, 'UserData')]; pauses execution until the 'UserData' property of #strong[hFig]; changes. If the specified property name is invalid, an error stops execution.

 #strong[waitfor(obj, propertyName, propertyValue)]; pauses execution until the specified property of the object changes to the given value. If the property is already equal to propvalue when#strong[waitfor]; is called, it returns immediately, allowing execution to resume.


== Examples

``````matlab
h = figure()
waitfor(h);
% close figure to continue

``````

``````matlab
hFig = figure('Position', [300, 300, 300, 150]);
hButton = uicontrol('Style', 'togglebutton', 'String', 'Toggle Me', 'Position', [100, 50, 100, 40], 'Value', 0);
hButton.Callback = @(src, event) set(src, 'Value', 1);
waitfor(hButton, 'Value');
% press toggle button

``````

``````matlab
hFig = figure('Position', [300, 300, 300, 150]);
hButton = uicontrol('Style', 'togglebutton', 'String', 'Toggle Me', 'Position', [100, 50, 100, 40], 'Value', 0);
hButton.Callback = @(src, event) set(src, 'Value', 1);
waitfor(hButton, 'Value', 1);
% press toggle button

``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.waitforbuttonpress>)[waitforbuttonpress];, #nlink(<core:pause>)[pause];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.7.0], [initial version],
)

// Author: Allan CORNET
