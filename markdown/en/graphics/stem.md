# stem

Plot discrete sequence data.

## Syntax

- stem(Y)
- stem(X, Y)
- stem(..., 'filled')
- stem(..., LineSpec)
- stem(..., propertyName, propertyValue)
- stem(ax, ...)
- go = stem(...)

## Input argument

- X - Locations to plot data values in Y.
- Y - Data sequence to display.
- LineSpec - Line style, marker and/or color: character vector or scalar string.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.
- ax - Axes object.

## Output argument

- gr - group of graphics object.

## Description

<p>A two-dimensional stem plot is a way to visualize data by representing it as lines extending from a horizontal baseline along the x-axis.</p>

<p>At the end of each line, there is a circle (which is the default marker), and the vertical position of this circle corresponds to the value of the data it represents.</p>

<p>
            stem(Y) creates a stem plot by taking the data sequence Y and drawing stems that extend from regularly spaced and automatically determined points along the x-axis.</p>

<p>If Y is a matrix, the stem function plots all elements in a row against the same x-value.</p>

<p>
                stem(X, Y) creates a stem plot that shows how X relates to the columns of Y.</p>

<p>Both X and Y can be vectors or matrices of the same size.</p>

<p>
                    X can be either a row or a column vector, and Y should be a matrix with the same number of rows as the length of X.</p>

<p>If you want to specify whether to fill the circle at the end of each stem, you can use stem(...,'fill').</p>

<p>Moreover, by using stem(..., LineSpec), you can define the line style, marker symbol, and color for the stems and the top marker.</p>

<p>Refer to LineSpec for more details on how to customize the appearance of the stem plot.</p>

## Examples

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

## See also

[plot](../graphics/plot.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
