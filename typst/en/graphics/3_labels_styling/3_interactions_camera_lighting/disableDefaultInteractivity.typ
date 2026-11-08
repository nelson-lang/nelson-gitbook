#import "../../nelson_help.typ": *

= disableDefaultInteractivity <graphics:3_labels_styling.3_interactions_camera_lighting.disableDefaultInteractivity>

Disable the built-in axes interactions.

== Syntax

- #raw("disableDefaultInteractivity(ax)");

== Input argument

/ ax: a scalar graphics object value: an axes.

== Description

By default, the axes have built-in interactions enabled: dragging the cursor over the axes pans the content (or rotates it for a 3-D view), and the scroll wheel zooms.

 #strong[disableDefaultInteractivity(ax)]; turns these built-in interactions off for the axes #strong[ax];.

 The axes toolbar and the pan, zoom, and rotate modes enabled from the toolbar or programmatically are not affected.

 Use #strong[enableDefaultInteractivity]; to turn the built-in interactions back on.


== Example

``````matlab
plot(1:1000, sin(1:1000))
ax = gca();
disableDefaultInteractivity(ax);

``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.enableDefaultInteractivity>)[enableDefaultInteractivity];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.pan>)[pan];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.zoom>)[zoom];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
