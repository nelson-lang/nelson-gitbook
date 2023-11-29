# stairs

Stairstep graph.

## Syntax

- stairs(Y)
- stairs(X, Y)
- stairs(..., LineSpec)
- stairs(..., Name, Value)
- stairs(ax, ...)
- h = stairs(...)
- [xb, yb] = stairs(...)

## Input argument

- X - x values.
- Y - y values.
- LineSpec - Line style, marker and/or color: character vector or scalar string.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.
- ax - Axes object.

## Output argument

- h - line object.
- xb - x values for use with plot
- yb - y values for use with plot

## Description

  <p>Stairstep graphs are a valuable tool for creating time-history plots of digitally sampled data.</p>
  <p><b>stairs(Y)</b> function is used to generate such graphs by plotting the elements of the vector <b>Y.</b></p>
  <p>If <b>Y</b> is a matrix, it draws one line for each column, with the color of the lines determined by the ColorOrder property of the axes.</p>
  <p>In the case of a vector <b>Y</b>, the x-axis scale spans from 1 to the length of <b>Y</b>, while for a matrix <b>Y</b>, the x-axis scale ranges from 1 to the number of rows in <b>Y</b>.</p>
  <p><b>stairs(X, Y)</b> allows you to plot the elements in <b>Y</b> at specific locations defined by the vector <b>X</b>.</p>
  <p>It's important to note that the elements in <b>X</b> must be in a monotonic order to create a valid stairstep graph.</p>

## Examples

```matlab
f = figure();
f = figure();
x1 = linspace(0,2*pi)';
x2 = linspace(0,pi)';
X = [x1,x2];
Y = [sin(5*x1),exp(x2).*sin(5*x2)];
ax = gca();
stairs(ax, X,Y)
```

<img src="stairs_1_F17087DF.svg" align="middle"/>

```matlab
X = linspace(0,1,45)';
Y = [cos(3*X), exp(X).*sin(9*X)];
h = stairs(X,Y);
h(1).Marker = 'o';
h(1).MarkerSize = 5;
h(2).Marker = '+';
h(2).MarkerFaceColor = 'm';
```

<img src="stairs_2_CF83A4A1.svg" align="middle"/>

## See also

[plot](plot.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
