#import "../../nelson_help.typ": *

= yyaxis <graphics:3_labels_styling.1_axes_appearance.yyaxis>

Create or select an axes with two y-axes.

== Syntax

- #raw("yyaxis left");
- #raw("yyaxis right");
- #raw("yyaxis(ax, 'left')");
- #raw("yyaxis(ax, 'right')");

== Input argument

/ 'left': Activate the left side. New plots are added to the left y-axis.
/ 'right': Activate the right side. New plots are added to the right y-axis.
/ ax: Target axes: axes.

== Description

#strong[yyaxis]; creates a chart with two y-axes and selects the active side. If the current axes does not already have two y-axes, one is added; if there is no current axes, one is created.

 The two sides share the same x-axis but each has its own limits, colour, scale, direction, ticks, label and children. Properties whose name starts with #strong[Y]; (such as #strong[YLim];, #strong[YColor]; or #strong[YLabel];) apply to the active side only. Query #strong[YAxisLocation]; to know which side is active.

 By default the left ruler uses the first colour of the axes #strong[ColorOrder]; and the right ruler the second colour.

 The two rulers are also available as objects through the axes #strong[YAxis]; property: #strong[YAxis(1)]; is the left ruler and #strong[YAxis(2)]; the right ruler, whatever the active side.

 #strong[cla reset]; removes the second y-axis and returns to a single y-axis.


== Example

``````matlab
f = figure();
x = linspace(0, 10);
yyaxis left
plot(x, sin(x))
ylabel('left side')
yyaxis right
plot(x, 100 * cos(x))
ylabel('right side')

``````


#align(center)[#image("yyaxis.svg")]

== See also

#nlink(<graphics:2_graphics_objects.1_object_management.hold>)[hold];, #nlink(<graphics:3_labels_styling.1_axes_appearance.axis>)[axis];, #nlink(<graphics:3_labels_styling.4_labels_annotations.ylabel>)[ylabel];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
