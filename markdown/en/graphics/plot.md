# plot

Linear 2-D plot.

## Syntax

- plot(Y)
- plot(X1, Y1, ...)
- plot(X1, Y1, LineSpec, ...)
- plot(..., propertyName, propertyValue, ...)
- plot(ax, ...)
- go = plot(...)

## Input argument

- X1 - x-coordinates: vector or matrix.
- Y1 - y-coordinates: vector or matrix.
- LineSpec - Line style, marker, and/or color: character vector or scalar string.
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character. see help of 'line' for property list.
- propertyValue - a value.

## Output argument

- go - a graphics object: line type.

## Description

<p>
            <b>plot(Y)</b> plots the columns of <b>Y</b> versus their index.</p>
<p>
                <b>plot(X, Y)</b> plots line defined by <b>X</b> versus <b>Y</b> pair.</p>
<p>
                    <b>go = plot(...)</b> returns a column vector of line graphics objects.</p>
<p></p>
<p>
                        <b>LineSpec</b> is a string used to change the characteristics of the line and is composed of three optional parts in any order:</p>
<p></p>
<p>The SymbolSpec specifies the symbol to be drawn at each data point:</p>
<p>
                            <b>'o'</b>: Circle symbol</p>
<p>
                                <b>'x'</b>: Times symbol</p>
<p>
                                    <b>'+'</b>: Plus symbol</p>
<p>
                                        <b>'*'</b>: Asterisk symbol</p>
<p>
                                            <b>'.'</b>: Dot symbol</p>
<p>
                                                <b>'s'</b>: Square symbol</p>
<p>
                                                    <b>'d'</b>: Diamond symbol</p>
<p>
                                                        <b>'v'</b>: Downward-pointing triangle symbol</p>
<p>
                                                            <b>'^'</b>: Upward-pointing triangle symbol</p>
<p>
                                                                <b>'>'</b>: Left-pointing triangle symbol</p>
<p>
                                                                    <b>'<'</b>: Right-pointing triangle symbol</p>
<p></p>
<p>The LineStyleSpec specifies the line style to use for each data series:</p>
<p>
                                                                        <b>'-'</b>: Solid line style</p>
<p>
                                                                            <b>'--'</b>: Dashed line style</p>
<p>
                                                                                <b>'-.'</b>: Dot-Dash-Dot-Dash line style</p>
<p>
                                                                                    <b>':'</b>: Dotted line style</p>
<p></p>
<p>The ColorSpec specifies the line color to use for each data series:</p>
<p>
                                                                                        <b>'k'</b>: Color Black</p>
<p>
                                                                                            <b>'y'</b>: Color Yellow</p>
<p>
                                                                                                <b>'m'</b>: Color Magenta</p>
<p>
                                                                                                    <b>'c'</b>: Color Cyan</p>
<p>
                                                                                                        <b>'r'</b>: Color Red</p>
<p>
                                                                                                            <b>'b'</b>: Color Blue</p>
<p>
                                                                                                                <b>'g'</b>: Color Green</p>
<p></p>
<p>see <b>line</b> for more information about properties</p>

## Examples

Default abscissae using indices:

```matlab
f = figure()
plot(sin(0:0.1:2*pi))
```

<img src="plot_y.svg" align="middle"/>
Using explicit abscissae:

```matlab
f = figure()
x = [0:0.1:2*pi]';
plot(x, sin(x))
```

<img src="plot_xy.svg" align="middle"/>
Multiple curves with shared abscissae:

```matlab
f = figure()
x = [0:0.1:2*pi]';
plot(x, [cos(x), cos(2*x), cos(3*x)])
```

<img src="plot_multiple.svg" align="middle"/>
Color and Size of Markers:

```matlab
f = figure();
x = -pi:pi/10:pi;
y = tan(sin(x)) - sin(tan(x));
plot(x ,y, '--rs','LineWidth', 2, 'MarkerEdgeColor','k', 'MarkerFaceColor','g', 'MarkerSize', 11)
```

<img src="plot_markers.svg" align="middle"/>
Adding Title and Axis Labels:

```matlab
f = figure();
x = linspace(0, 10, 150);
y = sin(5*x);
plot(x,y,'Color',[0,0.7,0.9])
title(_('2-D Line Plot'))
xlabel('x')
ylabel('sin(5x)')
```

<img src="plot_title.svg" align="middle"/>

## See also

[line](../graphics/line.md), [plot3](../graphics/plot3.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
