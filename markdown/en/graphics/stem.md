# stem

Plot discrete sequence data.

## 📝 Syntax

- stem(Y)
- stem(X, Y)
- stem(..., 'filled')
- stem(..., LineSpec)
- stem(..., propertyName, propertyValue)
- stem(ax, ...)
- go = stem(...)

## 📥 Input argument

- X - Locations to plot data values in Y.
- Y - Data sequence to display.
- LineSpec - Line style, marker and/or color: character vector or scalar string.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.
- ax - Axes object.

## 📤 Output argument

- gr - group of graphics object.

## 📄 Description

A two-dimensional <b>stem</b> plot is a way to visualize data by representing it as lines extending from a horizontal baseline along the x-axis.

At the end of each line, there is a circle (which is the default marker), and the vertical position of this circle corresponds to the value of the data it represents.

<b>stem(Y)</b> creates a stem plot by taking the data sequence <b>Y</b> and drawing stems that extend from regularly spaced and automatically determined points along the x-axis.

If <b>Y</b> is a matrix, the stem function plots all elements in a row against the same x-value.

<b>stem(X, Y)</b> creates a stem plot that shows how <b>X</b> relates to the columns of <b>Y</b>.

Both <b>X</b> and <b>Y</b> can be vectors or matrices of the same size.

<b>X</b> can be either a row or a column vector, and <b>Y</b> should be a matrix with the same number of rows as the length of <b>X</b>.

If you want to specify whether to fill the circle at the end of each stem, you can use <b>stem(...,'fill')</b>.

Moreover, by using <b>stem(..., LineSpec)</b>, you can define the line style, marker symbol, and color for the stems and the top marker.

Refer to <b>LineSpec</b> for more details on how to customize the appearance of the stem plot.

## 💡 Examples

```matlab
f = figure();
x = 1:10;
y = 2*x;
h = stem (x, y, 'MarkerFaceColor', [1 0 1]);
title('stem plot modified with property/value pair');
```

<img src="stem_1.svg" align="middle"/>

```matlab
f =figure();
% Defining base line - X input vector ranging from 0 to 2*pi
X = 0 : pi/100 : 2*pi;
% Defining the Y input vector as function of X
Y = exp(-3*X/4) .* cos(2*X);
% Third, we use the 'stem' function to plot discrete values
stem(X,Y)
```

<img src="stem_2.svg" align="middle"/>

## 🔗 See also

[plot](../graphics/plot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
