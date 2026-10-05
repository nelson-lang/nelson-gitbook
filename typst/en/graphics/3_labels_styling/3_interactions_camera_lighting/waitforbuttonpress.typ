#import "../../nelson_help.typ": *

= waitforbuttonpress <graphics:3_labels_styling.3_interactions_camera_lighting.waitforbuttonpress>

Wait for click or key press.

== Syntax

- #raw("w = waitforbuttonpress()");

== Output argument

/ w: a scalar double value: 0 for mouse button pressed, 1 for key pressed.

== Description

#strong[w \= waitforbuttonpress()]; pauses the execution of code until the user interacts with the current figure by either clicking a mouse button or pressing a key.


== Example

``````matlab
cf = gcf();
w = waitforbuttonpress;
axes;
``````


== See also

#nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];, #nlink(<graphics:2_graphics_objects.1_object_management.gcf>)[gcf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.7.0], [initial version],
)

// Author: Allan CORNET
