# contourf

Filled contour plot of matrix

## 📝 Syntax

- contourf(Z)
- contourf(X, Y, Z)
- contourf(..., levels)
- contourf(..., LineSpec)
- contourf(ax, ...)
- M = contourf(...)
- [M, h] = contourf(...)

## 📥 Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- Z - z-coordinates: numeric matrix.
- levels - Contour levels: scalar count, vector of levels, or [k k] for one level.
- LineSpec - Line style and color.
- ax - Parent axes.

## 📤 Output argument

- M - Contour matrix.
- h - Contour graphics object.

## 📄 Description

<b>contourf</b> draws filled contour bands for the values in <b>Z</b>. The returned contour matrix matches the object's <b>ContourMatrix</b> property.

The contour object supports line, fill, transparency, label, and contour-level properties including <b>FaceColor</b>, <b>FaceAlpha</b>, <b>ShowText</b>, <b>LabelColor</b>, <b>LabelSpacing</b>, <b>LabelFormat</b>, <b>TextList</b>, <b>TextStep</b>, and <b>ZLocation</b>.

## 💡 Examples

Draw filled contours.

```matlab
figure();
[X,Y,Z] = peaks(40);
[M,h] = contourf(X,Y,Z,10);
h.FaceAlpha = 0.75;
```

Draw filled contours.

```matlab
x = linspace(-2*pi, 2*pi, 100);
y = linspace(-2*pi, 2*pi, 100);
[X, Y] = meshgrid(x, y);
Z = sin(X) .* cos(Y);
figure;
contourf(X, Y, Z, 20);
colorbar;
title('Demo contourf');
xlabel('X');
ylabel('Y');
colormap parula;
```

<img src="contourf.svg" align="middle"/>

## 🔗 See also

[contour](../graphics/contour.md), [contourc](../graphics/contourc.md), [contour3](../graphics/contour3.md), [clabel](../graphics/clabel.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
