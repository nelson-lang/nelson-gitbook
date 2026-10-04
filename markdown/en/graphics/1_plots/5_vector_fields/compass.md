# compass

Display arrows from the origin on a polar grid.

## 📝 Syntax

- compass(Z)
- compass(U, V)
- compass(..., LineSpec)
- compass(..., propertyName, propertyValue)
- compass(parent, ...)
- h = compass(...)

## 📄 Description

<b>compass</b> draws arrows starting from the origin toward the cartesian points defined by the input components on a polar grid.

With a single complex input <b>Z</b>, the real parts are the horizontal components and the imaginary parts are the vertical components; this is equivalent to <b>compass(real(Z), imag(Z))</b>.

With two real inputs <b>U</b> and <b>V</b>, each pair (U, V) is a cartesian point and the arrow points from the origin to that point. When <b>U</b> and <b>V</b> are matrices, one arrow is drawn for each element.

Each vector is drawn as a <b>Line</b> object made of a shaft from the origin and a short two-segment arrowhead, over a polar reference grid. <b>h = compass(...)</b> returns a column vector of <b>Line</b> objects, one per vector.

## 💡 Examples

Display arrows from complex values.

```matlab
Z = [1 + 2i, 2 - 1i, -1 + 1i];
compass(Z);
```

Use cartesian components with a line style and line properties.

```matlab
U = [1 3 2];
V = [2 1 -1];
h = compass(U, V, '-r');
set(h, 'LineWidth', 1.5);
```

## 🔗 See also

[compassplot](../../../graphics/1_plots/5_vector_fields/compassplot.md), [feather](../../../graphics/1_plots/5_vector_fields/feather.md), [quiver](../../../graphics/1_plots/5_vector_fields/quiver.md).
