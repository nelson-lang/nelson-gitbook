#import "../../nelson_help.typ": *

= newplot <graphics:2_graphics_objects.1_object_management.newplot>

Prepare to produce a new plot.

== Syntax

- #raw("go = newplot()");
- #raw("go = newplot(ax)");

== Input argument

/ ax: specified figure or axes rather than the current figure and axes.

== Output argument

/ go: a graphics object: axes type.

== Description

#strong[newplot]; prepares a figure and axes for graphics commands.


== Example

``````matlab
h = newplot()
``````


== See also

#nlink(<graphics:1_plots.1_line_plots.plot>)[plot];, #nlink(<graphics:2_graphics_objects.1_object_management.figure>)[figure];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
