# pie

Legacy pie chart.

## Syntax

- pie(X)
- pie(X, explode)
- pie(X, labels)
- pie(X, explode, labels)
- pie(ax, ...)
- p = pie(...)

## Input argument

- X - vector or matrix.
- explode - Offset slices: numeric vector or matrix, logical vector and matrix, string array or cell array of character vectors.
- labels - '%.0f%%' (default) or array of text labels
- ax - Axes object.

## Output argument

- p - vector of patch and text objects.

## Description

<p>
            <b>pie(X)</b> generates a pie chart based on the data in the array variable <b>X</b>.</p>
<p>In cases where the sum of the elements in <b>X</b> is less than or equal to 1, the values in <b>X</b> directly represent the proportional areas of the pie slices.</p>
<p>If the sum of <b>X</b> is less than 1, the pie chart displays only a partial pie.</p>
<p>Alternatively, if the sum of <b>X</b> exceeds 1, the function normalizes the values by dividing each element by the sum of <b>X</b>.</p>
<p>This normalization ensures that the pie chart accurately reflects the relative proportions of the data.</p>
<p>In situations where <b>X</b> is a categorical variable, each slice of the pie corresponds to a category, and the area of each slice is determined by the ratio of the number of elements in the category to the total number of elements in <b>X</b>.</p>

## Examples

```matlab
f = figure();
p = pie ([3, 2, 1], [0, 0, 1]);
```

<img src="pie_1.svg" align="middle"/>

```matlab
f = figure();
p = pie([5 9 4 6 3],[0 1 0 1 0]);

```

<img src="pie_2.svg" align="middle"/>

```matlab
f = figure();
p = pie([3 4 6 2],[0 1 0 0],["part1", "part2", "part3", "part4"]);

```

<img src="pie_3.svg" align="middle"/>

```matlab
f = figure();
y2010 = [50 0 100 95];
y2011 = [65 22 97 120];
ax1 = subplot(1, 2, 1);
p1 = pie(ax1, y2010)
title('2010')
ax2 = subplot(1, 2, 2);
p2 = pie(ax2, y2011)
title('2011')

```

<img src="pie_4.svg" align="middle"/>

## See also

[patch](../graphics/patch.md), [text](../graphics/text.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
