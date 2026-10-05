# tilenum

Get tile number from row-column indices or graphics object.

## 📝 Syntax

- n = tilenum(t, row, col)
- n = tilenum(obj)

## 📥 Input argument

- t - TiledChartLayout object.
- row - Row index: positive integer or array.
- col - Column index: positive integer or array.
- obj - Graphics object (axes) created by nexttile.

## 📤 Output argument

- n - Tile number: positive integer, or NaN for out-of-range or edge tiles.

## 📄 Description


<b>tilenum(t, row, col)</b> returns the tile number for the given row and column in the TiledChartLayout t. 

<b>tilenum(obj)</b> returns the tile number of the tile occupied by the axes object obj. 

Returns NaN for out-of-range indices or for edge tile axes.

## 💡 Example

Get tile number by row and column

```matlab
t = tiledlayout(2, 3);
n = tilenum(t, 1, 2)

```


## 🔗 See also

[tiledlayout](../../2_graphics_objects/2_layout_objects/tiledlayout.md), [nexttile](../../2_graphics_objects/2_layout_objects/nexttile.md), [tilerowcol](../../2_graphics_objects/2_layout_objects/tilerowcol.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.17.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
