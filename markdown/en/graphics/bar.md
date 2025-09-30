# bar

Bar graph.

## Syntax

- bar(Y)
- bar(X, Y)
- bar(..., width)
- bar(..., color)
- bar(..., propertyName, propertyValue)
- bar(ax, ...)
- b = bar(...)

## Input argument

- X - x-coordinates: scalar, vector or string array.
- Y - y-coordinates: vector.
- width - scalar, 0.8 (default).
- color - a scalar string or row vector character: color name or short color name.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.
- ax - Axes object.

## Output argument

- b - patch graphics object.

## Description

<p>
            <b>bar(X, Y)</b> creates a bar graph using two sets of X-Y data vectors.</p>
<p>When only one argument is provided (Y), it is interpreted as a vector containing Y values, and the X coordinates are generated as a sequence from 1 to the number of elements in the Y vector.</p>
<p>You can optionally specify the width of the bars.</p>
<p>A value of 1.0 will make each bar exactly touch its neighboring bars, while the default width is set to 0.8.</p>

## Examples

```matlab
f = figure();
y = [ 91 75 123.5 105 150 131 203 179 249 226 281.5];
bar(y);

```

<img src="bar_1.svg" align="middle"/>

```matlab
f = figure();
y = [ 91 75 123.5 105 150 131 203 179 249 226 281.5];
bar(y, 0.5);

```

<img src="bar_2.svg" align="middle"/>

```matlab
f = figure();
x = 1900:10:2000;
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(x, y, 'r');

```

<img src="bar_3.svg" align="middle"/>

```matlab
f = figure();
x = [ "Summer", "Spring", "Winter", "Autumn"];
y = [ 2 1 4 3];
bar(x, y);

```

<img src="bar_4.svg" align="middle"/>

```matlab
f = figure();
y = [91 75 123.5 105 150 131 203 179 249 226 281.5];
bar(y, 'FaceColor', [0 .5 .5], 'EdgeColor', [0 .9 .9], 'LineWidth', 1.5)

```

<img src="bar_5.svg" align="middle"/>

## See also

[hist](../graphics/hist.md), [patch](../graphics/patch.md).

## History

| Version | Description                             |
| ------- | --------------------------------------- |
| 1.0.0   | initial version                         |
| 1.12.0  | Color name or short color name managed. |

## Author

Allan CORNET
