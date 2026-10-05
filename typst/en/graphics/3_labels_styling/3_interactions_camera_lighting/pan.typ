#import "../../nelson_help.typ": *

= pan <graphics:3_labels_styling.3_interactions_camera_lighting.pan>

Enable pan mode.

== Syntax

- #raw("pan");
- #raw("pan option");
- #raw("pan(fig, ...)");
- #raw("pan(ax, ...)");

== Input argument

/ option: string: 'on', 'off', 'out', 'xon', 'yon' or 'toggle'.
/ fig: Figure object: Target figure
/ ax: a scalar graphics object value: parent container, specified as a axes.

== Description

Use pan mode to adjust axis limits during interactive data exploration.

 Enable or disable the pan mode and configure additional basic settings using the pan function.

 Pan mode works with line, bar, histogram, and surface charts. These charts typically provide a pan icon on the toolbar.

 #strong[pan option]; configures the pan mode for all axes within the current figure.

 Once pan mode is active, you can adjust the view of axes using the cursor, or keyboard:

 Cursor: Click and drag the cursor in the axes.

 Keyboard: To pan horizontally, press the left arrow (←) or the right arrow (-\>) key. To pan vertically, press the up arrow (↑) or the down arrow (↓) key.

 

 The pan mode option can be specified using one of the following values:

 #strong['toggle'];: Toggles the pan mode. If pan mode is disabled, 'toggle' reverts to the most recently used pan option of 'on', 'xon', or 'yon'. This option behaves the same as calling pan without any arguments.

 #strong['xon'];: Enables pan mode for the x-dimension exclusively.

 #strong['yon'];: Activates pan mode for the y-dimension exclusively.

 #strong['on'];: Activates pan mode.

 #strong['off'];: Deactivates pan mode. Note that certain default interactions may persist regardless of the interaction mode.


== Example

``````matlab
surf(peaks)
pan on

``````


== See also

#nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.rotate3d>)[rotate3d];, #nlink(<graphics:3_labels_styling.3_interactions_camera_lighting.zoom>)[zoom];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.2.0], [initial version],
)

// Author: Allan CORNET
