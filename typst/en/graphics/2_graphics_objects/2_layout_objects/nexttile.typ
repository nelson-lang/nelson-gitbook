#import "../../nelson_help.typ": *

= nexttile <graphics:2_graphics_objects.2_layout_objects.nexttile>

Create axes in tiled chart layout.

== Syntax

- #raw("ax = nexttile");
- #raw("ax = nexttile(span)");
- #raw("ax = nexttile(tilenum)");
- #raw("ax = nexttile(tilenum, span)");
- #raw("ax = nexttile(edge)");
- #raw("ax = nexttile(t, ...)");

== Input argument

/ t: TiledChartLayout object.
/ tilenum: Tile position: positive integer index or edge location string ('north', 'south', 'east', 'west').
/ span: Span of the axes: \[r, c\] where r is number of rows and c is number of columns to span.

== Output argument

/ ax: Axes graphics object.

== Description

#strong[nexttile]; creates an axes in the next available tile of the current tiled layout. If no layout exists, one is created automatically.

 #strong[nexttile(tilenum)]; creates or returns existing axes at the specified tile number. If the selected tile is the upper-left tile of an existing spanned axes, that axes is returned. If the selected tile is in the middle of a span, the old axes is replaced.

 #strong[nexttile(span)]; creates axes spanning multiple tiles, specified as \[rows, cols\], using the first empty region that can contain the span.

 #strong[nexttile(tilenum, span)]; returns an existing axes only when it occupies exactly the requested tile region; otherwise overlapping axes are replaced.

 #strong[nexttile('north')];, #strong[nexttile('south')];, #strong[nexttile('east')];, and #strong[nexttile('west')]; create or return one-tile-thick edge axes around the central grid.


== Example

Create a 2-by-2 layout and fill tiles

``````matlab
t = tiledlayout(2, 2);
for k = 1:4
  ax = nexttile;
  plot(ax, rand(1, 10));
end

``````


== See also

#nlink(<graphics:2_graphics_objects.2_layout_objects.tiledlayout>)[tiledlayout];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tilenum>)[tilenum];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tilerowcol>)[tilerowcol];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
