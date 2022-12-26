# view

Camera line of sigh.

## Syntax

- view(dim)
- view(az, el)
- view(ax, ...)

## Input argument

- dim - Dimensions: 2 equivalent to view(0, 90) or 3 equivalent to view(-37.5, 30).
- az - Azimuth: scalar
- el - Elevation: scalar
- ax - a scalar graphics object value: parent container, specified as a axes.

## Description

  <p><b>view</b>sets the view into a plot.</p>

## Examples

```matlab
f = figure();
[X,Y] = meshgrid(-6:.5:6);
Z = Y .* sin(X) - X .* cos(Y);
surf(X, Y, Z)
```

<img src="view_1_FADFDAFB.svg" align="middle"/>
```matlab
f = figure();
[X,Y] = meshgrid(-6:.5:6);
Z = Y .* sin(X) - X .* cos(Y);
surf(X, Y, Z)
view(90, 0)
```
<img src="view_2_9A6A68DE.svg" align="middle"/>
```matlab
f = figure();
[X,Y] = meshgrid(-6:.5:6);
Z = Y .* sin(X) - X .* cos(Y);
surf(X, Y, Z)
view(2)
```
<img src="view_3_8FE94819.svg" align="middle"/>

## See also

[axes](axes.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
