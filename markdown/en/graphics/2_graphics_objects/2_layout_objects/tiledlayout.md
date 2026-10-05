# tiledlayout

Create tiled chart layout.

## 📝 Syntax

- t = tiledlayout
- t = tiledlayout(m, n)
- t = tiledlayout(arrangement)
- t = tiledlayout(parent, ...)
- t = tiledlayout(..., propertyName, propertyValue)

## 📥 Input argument

- m - Number of tile rows: positive integer.
- n - Number of tile columns: positive integer.
- arrangement - 'flow' or 'vertical' or 'horizontal': automatic arrangement mode.
- parent - Parent figure handle.
- propertyName - Property name: 'TileSpacing', 'Padding', 'TileIndexing', or other layout property.
- propertyValue - Property value corresponding to the property name.

## 📤 Output argument

- t - TiledChartLayout graphics object.

## 📄 Description


<b>tiledlayout</b> creates a tiled chart layout in the current figure for displaying multiple plots in a grid arrangement. 

<b>tiledlayout</b> with no input arguments creates a flow layout. 

<b>tiledlayout(m, n)</b> creates a layout with m rows and n columns of tiles. 

<b>tiledlayout('flow')</b> creates a layout that automatically adjusts the grid as axes are added. <b>tiledlayout('vertical')</b> stacks axes from top to bottom, and <b>tiledlayout('horizontal')</b> stacks axes from left to right. 

Use <b>nexttile</b> to create axes within the layout. 

See [tiledlayout properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.tiledlayout.properties.md) for the complete property list.

## 💡 Example

2-by-2 tiled layout

```matlab
t = tiledlayout(2, 2);
ax1 = nexttile;
plot(ax1, 1:10, (1:10).^2);
ax2 = nexttile;
plot(ax2, 1:10, sqrt(1:10));
t.TileSpacing = 'compact';

```
<img src="tiledlayout.svg" align="middle"/>


## 🔗 See also

[tiledlayout properties](../../../graphics/2_graphics_objects/4_properties/nelson.graphics.tiledlayout.properties.md), [nexttile](../../2_graphics_objects/2_layout_objects/nexttile.md), [tilenum](../../2_graphics_objects/2_layout_objects/tilenum.md), [tilerowcol](../../2_graphics_objects/2_layout_objects/tilerowcol.md), [subplot](../../2_graphics_objects/2_layout_objects/subplot.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.17.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
