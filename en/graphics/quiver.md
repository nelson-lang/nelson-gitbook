# quiver

Vector plot.

## Syntax

- quiver(X, Y, U, V)
- quiver(U, V)
- quiver(..., LineSpec)
- quiver(..., propertyName, propertyValue)
- quiver(parent, ...)
- go = quiver(...)

## Input argument

- X - x-coordinates of bases of arrows: scalar, vector or matrix.
- Y - y-coordinates of bases of arrows: scalar, vector or matrix.
- U - x-components: scalar, vector or matrix.
- V - y-components: scalar, vector or matrix.
- LineSpec - Line style, marker and/or color: character vector or scalar string.
- parent - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Output argument

- ax - list of graphics object: arrows.

## Description

  <p><b>quiver(X, Y, U, V)</b> plots velocity vectors as arrows with components <b>(U,V)</b> at the point <b>(X, Y)</b>.</p>
  <p><b>quiver</b> try to scale the arrow lengths so that they do not overlap.</p>
  <p>Current implementation is slow. It will be optimized in next version (builtin).</p>

## Examples

```matlab
f = figure();
[X, Y] = meshgrid(0:pi/8:pi, -pi:pi/8:pi);
U1 = sin(X);
V1 = cos(Y);
quiver(U1,V1, 'r')
```

<img src="quiver_1_15CC7211.svg" align="middle"/>
```matlab
f = figure();
[X, Y] = meshgrid(0:pi/8:pi, -pi:pi/8:pi);
U1 = sin(X);
V1 = cos(Y);
U2 = sin(Y);
V2 = cos(X); 
ax1 = subplot(1, 2, 1);
axis equal
title(ax1, 'Left Plot')
quiver(ax1, X, Y, U1, V1)
ax2 = subplot(1, 2, 2);
quiver(X,Y,U2,V2)
axis equal
title(ax2, 'Right Plot')
```
<img src="quiver_2_A6CE0189.svg" align="middle"/>

## See also

[meshgrid](meshgrid.html), [subplot](subplot.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
