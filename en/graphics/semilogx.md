# semilogx

Semilog plot (x-axis has log scale).

## Syntax

- semilogx(X, Y)
- semilogx(X, Y, LineSpec)
- semilogx(Y)
- semilogx(Y, LineSpec)
- semilogx(ax, ...)
- semilogx(..., propertyName, propertyValue)
- go = semilogx(...)

## Input argument

- X - Log scale coordinates: scalar, vector or matrix.
- Y - Linear scale coordinates: scalar, vector or matrix.
- LineSpec - Line style, marker, and/or color: character vector or scalar string.
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character. see help of 'line' for property list.
- propertyValue - a value.

## Output argument

- go - a graphics object: line type.

## Description

  <p><b>semilogx(X, Y)</b> plots data using a base 10 logarithmic scale for the x-axis and a normal (linear) scale for the y-axis.</p>
  <p><b>semilogx</b> has the exact same syntax as the <b>plot</b> command.</p>

## Examples

```matlab
f = figure();
x = logspace(-1,2);
semilogx(x, x);
grid on
```

<img src="semilogx_1_AFC8551E.svg" align="middle"/>

```matlab
f = figure();
x = logspace(-1, 2, 15);
y = 13 + x;
semilogx(x, y, 'x', 'MarkerFaceColor', [0 0.447 0.741])
grid on
```

<img src="semilogx_2_4576F659.svg" align="middle"/>

## See also

[semilogy](semilogy.md), [line](line.md), [plot](plot.md), [grid](grid.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
