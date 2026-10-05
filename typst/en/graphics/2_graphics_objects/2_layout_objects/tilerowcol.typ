#import "../../nelson_help.typ": *

= tilerowcol <graphics:2_graphics_objects.2_layout_objects.tilerowcol>

Get row and column indices from tile number or graphics object.

== Syntax

- #raw("[row, col] = tilerowcol(t, tilenum)");
- #raw("[row, col] = tilerowcol(obj)");

== Input argument

/ t: TiledChartLayout object.
/ tilenum: Tile number: positive integer or array.
/ obj: Graphics object (axes) created by nexttile.

== Output argument

/ row: Row index: positive integer, or NaN for invalid or edge tiles.
/ col: Column index: positive integer, or NaN for invalid or edge tiles.

== Description

#strong[tilerowcol(t, tilenum)]; returns the row and column indices for the given tile number in the TiledChartLayout t.

 #strong[tilerowcol(obj)]; returns the row and column of the tile occupied by the axes object obj.

 Returns NaN for out-of-range tile numbers or for edge tile axes.


== Example

Get row and column from tile number

``````matlab
t = tiledlayout(2, 3);
[row, col] = tilerowcol(t, 4)

``````


== See also

#nlink(<graphics:2_graphics_objects.2_layout_objects.tiledlayout>)[tiledlayout];, #nlink(<graphics:2_graphics_objects.2_layout_objects.nexttile>)[nexttile];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tilenum>)[tilenum];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
