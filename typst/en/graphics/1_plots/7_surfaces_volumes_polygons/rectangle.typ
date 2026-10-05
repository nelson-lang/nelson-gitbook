#import "../../nelson_help.typ": *

= rectangle <graphics:1_plots.7_surfaces_volumes_polygons.rectangle>

Create a rectangle with sharp, rounded or curved corners

== Syntax

- #raw("rectangle()");
- #raw("rectangle('Position', pos)");
- #raw("rectangle('Position', pos, 'Curvature', cur)");
- #raw("rectangle(..., propertyName, propertyValue)");
- #raw("rectangle(ax, ...)");
- #raw("go = rectangle(...)");

== Input argument

/ pos: position and size, specified as a four-element vector \[x y w h\]. x and y set the location of the lower-left corner, w and h set the width and height in data units.
/ cur: curvature, specified as a scalar or a two-element vector \[horizontal vertical\], with each value in the range \[0, 1\]. 0 gives sharp corners and 1 gives the maximum curvature. Use \[1 1\] to draw an ellipse.
/ ax: a scalar graphics object value: parent container, specified as an axes.
/ propertyName: a scalar string or row vector character.
/ propertyValue: a value.

== Output argument

/ go: a graphics object: rectangle type.

== Description

#strong[rectangle('Position', pos)]; draws a rectangle at the location and size given by #strong[pos]; \= \[x y w h\].

 #strong[rectangle('Position', pos, 'Curvature', cur)]; draws a rectangle with rounded corners. The horizontal curvature is the fraction of the width that is curved along the top and bottom edges; the vertical curvature is the fraction of the height that is curved along the left and right edges. A scalar value applies the same curvature length to both directions, using the shorter side, so the corners are circular. Use #strong[\[1 1\]]; to draw an ellipse.

 #strong[rectangle(..., propertyName, propertyValue, ...)]; sets optional properties using name-value pairs, such as #strong[FaceColor];, #strong[EdgeColor];, #strong[LineStyle]; and #strong[LineWidth];.

 By default a rectangle has no fill (#strong[FaceColor]; is #strong['none'];), a dark grey outline (#strong[EdgeColor];), a solid line style and a line width of 0.5 point.

 #strong[go \= rectangle(...)]; returns the handle #strong[go]; to the created rectangle object.


== Example

Rounded rectangle and ellipse

``````matlab
f = figure('Color', 'w');
rectangle('Position', [0 0 2 1], 'Curvature', 0.2, ...
  'FaceColor', [0.6 0.8 1], 'EdgeColor', 'k', 'LineWidth', 2);
rectangle('Position', [2.5 0 1 1], 'Curvature', [1 1], ...
  'FaceColor', [1 0.8 0.6], 'EdgeColor', 'k', 'LineWidth', 2);
xlim([-0.3 3.8]);
ylim([-0.3 1.3]);
axis equal
axis off
``````


== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.fill>)[fill];, #nlink(<graphics:3_labels_styling.4_labels_annotations.annotation>)[annotation];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
