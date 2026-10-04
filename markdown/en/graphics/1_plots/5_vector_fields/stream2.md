# stream2

Compute 2-D streamline vertices from vector field data.

## 📝 Syntax

- vertices = stream2(U, V, startx, starty)
- vertices = stream2(X, Y, U, V, startx, starty)
- vertices = stream2(..., options)

## 📄 Description

<b>stream2</b> follows a 2-D vector field from each start point and returns the vertices it passed through. Nothing is drawn: hand the result to <b>streamline</b> to see it.

The result is a cell array with one entry per start point, each an N-by-2 array of <b>[x, y]</b> coordinates whose first row is the start point itself. A start point outside the field gives an empty entry; a start point the field does not move keeps its single vertex.

Without <b>X</b> and <b>Y</b> the field is indexed from 1, as <b>meshgrid(1:size(U, 2), 1:size(U, 1))</b> would give it.

The optional <b>options</b> input is <b>[stepsize]</b> or <b>[stepsize, maxvert]</b>. <b>stepsize</b> is counted in grid cells and defaults to 0.1. <b>maxvert</b> is the largest number of vertices to produce, the start point counted in, and defaults to 500.

## 💡 Example

Trace two streamlines of a rotating field.

```matlab
[x, y] = meshgrid(-2:0.25:2, -2:0.25:2);
vertices = stream2(x, y, -y, x, [1 1.5], [0 0]);
streamline(vertices);
```

<img src="stream2_1.svg" align="middle"/>

## 🔗 See also

[stream3](../../../graphics/1_plots/5_vector_fields/stream3.md), [streamline](../../../graphics/1_plots/5_vector_fields/streamline.md), [quiver](../../../graphics/1_plots/5_vector_fields/quiver.md).
