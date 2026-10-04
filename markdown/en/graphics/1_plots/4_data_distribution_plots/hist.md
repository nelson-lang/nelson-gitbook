# hist

Histogram plot.

## 📝 Syntax

- hist(x)
- hist(x, nbins)
- hist(ax, ...)
- counts = hist(...)
- [counts, centers] = hist(...)

## 📥 Input argument

- x - vector or matrix
- nbins - vector.
- ax - Axes object.

## 📤 Output argument

- counts - Counts of the number of elements in each bin: row vector for a vector input, one column of counts per column of a matrix input.
- centers - Bin centers: vector.

## 📄 Description

A histogram is a graphical representation that illustrates the distribution of data values.

When you use the <b>hist</b> function, it organizes the elements in the vector<b>Y</b> into 10 equally spaced containers and provides the count of elements in each container as a row vector.

<b>hist(Y, x)</b> with a vector<b>x</b>, the function will return the distribution of values in<b>Y</b> among bins determined by the length of <b>x</b>, with centers specified by the values in <b>x</b>.

For instance, if <b>x</b> is a 5-element vector,<b>hist</b> will categorize the elements of <b>Y</b> into five bins, each centered on the x-axis at the values specified in<b>x</b>.

A matrix <b>Y</b> is a set of samples, one per column: <b>hist</b> counts each column on its own and returns one column of counts per column of <b>Y</b>, and draws one bar series per column. The bins are read on the whole matrix, so every column is counted against the same bins.

When you use <b>hist(...)</b> without specifying any output arguments, it generates a histogram plot. The bins are distributed along the x-axis between the minimum and maximum values found in the input vector<b>Y</b>.

The <b>statistics</b> module carries a <b>hist</b> of its own, which this one takes over from as soon as the graphics module is loaded. Both count their bins the same way, so the same call answers the same counts either way; the one here is the only one that draws and the only one that accepts a designated axes.

## 💡 Example

```matlab
f = figure();
for i = 1:4
  subplot(2, 2, i)
  hist(randn(1000, 1), 50)
end

```

<img src="hist_1.svg" align="middle"/>

## 🔗 See also

[bar](../../../graphics/1_plots/6_discrete_data_plots/bar.md), [patch](../../../graphics/1_plots/7_surfaces_volumes_polygons/patch.md), [hist (statistics)](../../../statistics/hist.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
