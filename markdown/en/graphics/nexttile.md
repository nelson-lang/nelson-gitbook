# nexttile

Create axes in tiled chart layout.

## 📝 Syntax

- ax = nexttile
- ax = nexttile(span)
- ax = nexttile(tilenum)
- ax = nexttile(tilenum, span)
- ax = nexttile(edge)
- ax = nexttile(t, ...)

## 📥 Input argument

- t - TiledChartLayout object.
- tilenum - Tile position: positive integer index or edge location string ('north', 'south', 'east', 'west').
- span - Span of the axes: [r, c] where r is number of rows and c is number of columns to span.

## 📤 Output argument

- ax - Axes graphics object.

## 📄 Description

<b>nexttile</b> creates an axes in the next available tile of the current tiled layout. If no layout exists, one is created automatically.

<b>nexttile(tilenum)</b> creates or returns existing axes at the specified tile number. If the selected tile is the upper-left tile of an existing spanned axes, that axes is returned. If the selected tile is in the middle of a span, the old axes is replaced.

<b>nexttile(span)</b> creates axes spanning multiple tiles, specified as [rows, cols], using the first empty region that can contain the span.

<b>nexttile(tilenum, span)</b> returns an existing axes only when it occupies exactly the requested tile region; otherwise overlapping axes are replaced.

<b>nexttile('north')</b>, <b>nexttile('south')</b>, <b>nexttile('east')</b>, and <b>nexttile('west')</b> create or return one-tile-thick edge axes around the central grid.

## 💡 Example

Create a 2-by-2 layout and fill tiles

```matlab
t = tiledlayout(2, 2);
for k = 1:4
  ax = nexttile;
  plot(ax, rand(1, 10));
end

```

## 🔗 See also

[tiledlayout](tiledlayout.md), [tilenum](tilenum.md), [tilerowcol](tilerowcol.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
