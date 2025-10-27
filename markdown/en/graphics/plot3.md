# plot3

3-D line plot.

## 📝 Syntax

- plot3(X1, Y1, Z1, ...)
- plot3(X1, Y1, Z1, LineSpec, ...)
- plot3(..., propertyName, propertyValue, ...)
- plot3(ax, ...)
- go = plot3(...)

## 📥 Input argument

- X1 - x-coordinates: vector or matrix.
- Y1 - y-coordinates: vector or matrix.
- Z1 - z-coordinates: vector or matrix.
- LineSpec - Line style, marker, and/or color: character vector or scalar string.
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character. see help of 'line' for property list.
- propertyValue - a value.

## 📤 Output argument

- go - a graphics object: line type.

## 📄 Description

<b>plot3(X1, Y1, Z1, ...)</b> plots one or more lines in three-dimensional space.

<b>go = plot3(...)</b> returns a column vector of line graphics objects.

see <b>line</b> or <b>plot</b> for more information about properties

## 💡 Examples

```matlab
f  = figure();
t = 0:pi/50:10*pi;
L = plot3(sin(t), cos(t), t);
axis square
```

<img src="plot3_1.svg" align="middle"/>

```matlab
f  = figure();
t = 0:0.1:10*pi;
r = linspace (0, 1, length(t));
z = linspace (0, 1, length(t));
h = plot3 (r .* cos (t), r .* sin (t), z);
ylabel ('r .* sin (t)');
xlabel ('r .* cos (t)');
zlabel ('z');
title (_('plot3 display of 3-D helix'));
axis square
```

<img src="plot3_2.svg" align="middle"/>

## 🔗 See also

[line](../graphics/line.md), [plot](../graphics/plot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
