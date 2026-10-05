#import "../../nelson_help.typ": *

= box <graphics:3_labels_styling.1_axes_appearance.box>

Display or hide graphics object outline.

== Syntax

- #raw("box");
- #raw("box('on')");
- #raw("box('off')");
- #raw("box(visibility)");
- #raw("box(target, ...)");

== Input argument

/ visibility: Outline visibility: 'on', 'off', true, false, 1, or 0.
/ target: Target object with a Box property, such as axes, legend, or colorbar.

== Description

#strong[box()]; toggles the outline of the current axes.

 #strong[box('on')]; displays the current axes outline.

 #strong[box('off')]; hides the current axes outline.

 #strong[box(target, ...)]; modifies the outline of the specified target instead of the current axes.


== Example

``````matlab
f = figure();
plot(1:10)
box on
``````


#align(center)[#image("box.svg")]

== See also

#nlink(<graphics:2_graphics_objects.1_object_management.axes>)[axes];, #nlink(<graphics:3_labels_styling.1_axes_appearance.grid>)[grid];, #nlink(<graphics:3_labels_styling.4_labels_annotations.legend>)[legend];, #nlink(<graphics:3_labels_styling.4_labels_annotations.colorbar>)[colorbar];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
