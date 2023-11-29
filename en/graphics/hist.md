# hist

Histogram plot.

## Syntax

- hist(x)
- hist(x, nbins)
- hist(ax, ...)
- counts = hist(...)
- [counts, centers] = hist(...)

## Input argument

- x - vector or matrix
- nbins - vector.
- ax - Axes object.

## Output argument

- counts - Counts of the number of elements in each bin: row vector.
- centers - Bin centers: vector.

## Description

  <p>A histogram is a graphical representation that illustrates the distribution of data values.</p>
  <p>When you use the <b>hist</b> function, it organizes the elements in the vector <b>Y</b> into 10 equally spaced containers and provides the count of elements in each container as a row vector.</p>
  <p><b>hist(Y, x)</b> with a vector <b>x</b>, the function will return the distribution of values in <b>Y</b> among bins determined by the length of <b>x</b>, with centers specified by the values in <b>x</b>.</p>
  <p>For instance, if <b>x</b> is a 5-element vector, <b>hist</b> will categorize the elements of <b>Y</b> into five bins, each centered on the x-axis at the values specified in <b>x</b>.</p>
  <p>When you use <b>hist(...)</b> without specifying any output arguments, it generates a histogram plot. The bins are distributed along the x-axis between the minimum and maximum values found in the input vector <b>Y</b>.</p>

## Example

```matlab
f = figure();
for i = 1:4
  subplot(2, 2, i)
  hist(randn(1000, 1), 50)
end
```

<img src="hist_1_FD61AA81.svg" align="middle"/>

## See also

[bar](bar.md), [patch](patch.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
