#import "../../nelson_help.typ": *

= enableDefaultInteractivity <graphics:3_labels_styling.3_interactions_camera_lighting.enableDefaultInteractivity>

Enable the built-in axes interactions.

== Syntax

- #raw("enableDefaultInteractivity(ax)");

== Input argument

/ ax: a scalar graphics object value: an axes.

== Description

#strong[enableDefaultInteractivity(ax)]; turns the built-in interactions of the axes #strong[ax]; back on after they were turned off with #strong[disableDefaultInteractivity];.

 With the built-in interactions on, dragging the cursor over the axes pans the content (or rotates it for a 3-D view) and the scroll wheel zooms.

 This is the default state of a new axes.


== Example

``````matlab
plot(1:1000, sin(1:1000))
ax = gca();
disableDefaultInteractivity(ax);
enableDefaultInteractivity(ax);

``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.disableDefaultInteractivity>)[disableDefaultInteractivity];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.pan>)[pan];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.zoom>)[zoom];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
