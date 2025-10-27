# plot

Linear 2-D plot.

## 📝 Syntax

- plot(Y)
- plot(X1, Y1, ...)
- plot(X1, Y1, LineSpec, ...)
- plot(..., propertyName, propertyValue, ...)
- plot(ax, ...)
- go = plot(...)

## 📥 Input argument

- X1 - x-coordinates: vector or matrix.
- Y1 - y-coordinates: vector or matrix.
- LineSpec - Line style, marker, and/or color: character vector or scalar string.
- ax - a scalar graphics object value: parent container, specified as a axes.
- propertyName - a scalar string or row vector character. see help of 'line' for property list.
- propertyValue - a value.

## 📤 Output argument

- go - a graphics object: line type.

## 📄 Description

<b>plot(Y)</b> plots the columns of <b>Y</b> versus their index.

<b>plot(X, Y)</b> plots line defined by <b>X</b> versus <b>Y</b> pair.

<b>go = plot(...)</b> returns a column vector of line graphics objects.

<b>LineSpec</b> is a string used to change the characteristics of the line and is composed of three optional parts in any order:

The SymbolSpec specifies the symbol to be drawn at each data point:

| Symbol   | Description                       |
| -------- | --------------------------------- |
| **'o'**  | Circle symbol                     |
| **'x'**  | Times symbol                      |
| **'+'**  | Plus symbol                       |
| **'\*'** | Asterisk symbol                   |
| **'.'**  | Dot symbol                        |
| **'s'**  | Square symbol                     |
| **'d'**  | Diamond symbol                    |
| **'v'**  | Downward-pointing triangle symbol |
| **'^'**  | Upward-pointing triangle symbol   |
| **'>'**  | Left-pointing triangle symbol     |
| **'<'**  | Right-pointing triangle symbol    |

The LineStyleSpec specifies the line style to use for each data series:

| Style    | Description                  |
| -------- | ---------------------------- |
| **'-'**  | Solid line style             |
| **'--'** | Dashed line style            |
| **'-.'** | Dot-Dash-Dot-Dash line style |
| **':'**  | Dotted line style            |

The ColorSpec specifies the line color to use for each data series:

| Color   | Description   |
| ------- | ------------- |
| **'k'** | Color Black   |
| **'y'** | Color Yellow  |
| **'m'** | Color Magenta |
| **'c'** | Color Cyan    |
| **'r'** | Color Red     |
| **'b'** | Color Blue    |
| **'g'** | Color Green   |

see <b>line</b> for more information about properties

## 💡 Examples

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

## 🔗 See also

[line](../graphics/line.md), [plot3](../graphics/plot3.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
