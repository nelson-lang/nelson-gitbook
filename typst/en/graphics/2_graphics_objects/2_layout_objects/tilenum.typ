#import "../../nelson_help.typ": *

= tilenum <graphics:2_graphics_objects.2_layout_objects.tilenum>

Get tile number from row-column indices or graphics object.

== Syntax

- #raw("n = tilenum(t, row, col)");
- #raw("n = tilenum(obj)");

== Input argument

/ t: TiledChartLayout object.
/ row: Row index: positive integer or array.
/ col: Column index: positive integer or array.
/ obj: Graphics object (axes) created by nexttile.

== Output argument

/ n: Tile number: positive integer, or NaN for out-of-range or edge tiles.

== Description

#strong[tilenum(t, row, col)]; returns the tile number for the given row and column in the TiledChartLayout t.

 #strong[tilenum(obj)]; returns the tile number of the tile occupied by the axes object obj.

 Returns NaN for out-of-range indices or for edge tile axes.


== Example

Get tile number by row and column

``````matlab
t = tiledlayout(2, 3);
n = tilenum(t, 1, 2)

``````


== See also

#nlink(<graphics:2_graphics_objects.2_layout_objects.tiledlayout>)[tiledlayout];, #nlink(<graphics:2_graphics_objects.2_layout_objects.nexttile>)[nexttile];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tilerowcol>)[tilerowcol];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
