#import "../../nelson_help.typ": *

= rotate3d <graphics:3_labels_styling.3_interactions_camera_lighting.rotate3d>

Enable rotate mode.

== Syntax

- #raw("rotate3d");
- #raw("rotate3d option");
- #raw("rotate3d(fig, ...)");
- #raw("rotate3d(ax, ...)");

== Input argument

/ option: string: 'on', 'off' or 'toggle'.
/ fig: Figure object: Target figure
/ ax: a scalar graphics object value: parent container, specified as a axes.

== Description

Use rotate mode to interactively rotate the 3-D axes view during data exploration. Enable or disable rotate mode and configure basic options with the rotate3d function.

 #strong[rotate3d option]; establishes the rotate mode for all axes within the current figure. For instance, rotate3d on activates rotate mode, while rotate3d off deactivates it.

 

 When rotate mode is enabled, you can adjust the view of axes using the cursor or the keyboard:

 

 Cursor: Click and drag within the axes.

 Keyboard: Use the right arrow (-\>) or left arrow (←) keys to adjust azimuth, and the up arrow (↑) or down arrow (↓) keys to modify elevation.


== Example

``````matlab
surf(peaks)
rotate3d
``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.zoom>)[zoom];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.pan>)[pan];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.view>)[view];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.2.0], [initial version],
)

// Author: Allan CORNET
