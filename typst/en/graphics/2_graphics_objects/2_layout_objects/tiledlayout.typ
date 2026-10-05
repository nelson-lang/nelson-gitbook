#import "../../nelson_help.typ": *

= tiledlayout <graphics:2_graphics_objects.2_layout_objects.tiledlayout>

Create tiled chart layout.

== Syntax

- #raw("t = tiledlayout");
- #raw("t = tiledlayout(m, n)");
- #raw("t = tiledlayout(arrangement)");
- #raw("t = tiledlayout(parent, ...)");
- #raw("t = tiledlayout(..., propertyName, propertyValue)");

== Input argument

/ m: Number of tile rows: positive integer.
/ n: Number of tile columns: positive integer.
/ arrangement: 'flow' or 'vertical' or 'horizontal': automatic arrangement mode.
/ parent: Parent figure handle.
/ propertyName: Property name: 'TileSpacing', 'Padding', 'TileIndexing', or other layout property.
/ propertyValue: Property value corresponding to the property name.

== Output argument

/ t: TiledChartLayout graphics object.

== Description

#strong[tiledlayout]; creates a tiled chart layout in the current figure for displaying multiple plots in a grid arrangement.

 #strong[tiledlayout]; with no input arguments creates a flow layout.

 #strong[tiledlayout(m, n)]; creates a layout with m rows and n columns of tiles.

 #strong[tiledlayout('flow')]; creates a layout that automatically adjusts the grid as axes are added. #strong[tiledlayout('vertical')]; stacks axes from top to bottom, and #strong[tiledlayout('horizontal')]; stacks axes from left to right.

 Use #strong[nexttile]; to create axes within the layout.

 See #nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.tiledlayout.properties>)[tiledlayout properties]; for the complete property list.


== Example

2-by-2 tiled layout

``````matlab
t = tiledlayout(2, 2);
ax1 = nexttile;
plot(ax1, 1:10, (1:10).^2);
ax2 = nexttile;
plot(ax2, 1:10, sqrt(1:10));
t.TileSpacing = 'compact';

``````


#align(center)[#image("tiledlayout.svg")]

== See also

#nlink(<graphics:2_graphics_objects.4_properties.nelson.graphics.tiledlayout.properties>)[tiledlayout properties];, #nlink(<graphics:2_graphics_objects.2_layout_objects.nexttile>)[nexttile];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tilenum>)[tilenum];, #nlink(<graphics:2_graphics_objects.2_layout_objects.tilerowcol>)[tilerowcol];, #nlink(<graphics:2_graphics_objects.2_layout_objects.subplot>)[subplot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.17.0], [initial version],
)

// Author: Allan CORNET
