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

<p>When you use the hist function, it organizes the elements in the vector Y into 10 equally spaced containers and provides the count of elements in each container as a row vector.</p>

<p>
            hist(Y, x) with a vector x, the function will return the distribution of values in Y among bins determined by the length of x, with centers specified by the values in x.</p>

<p>For instance, if x is a 5-element vector, hist will categorize the elements of Y into five bins, each centered on the x-axis at the values specified in x.</p>

<p>When you use hist(...) without specifying any output arguments, it generates a histogram plot. The bins are distributed along the x-axis between the minimum and maximum values found in the input vector Y.</p>

## Example

```matlab
f = figure();
for i = 1:4
  subplot(2, 2, i)
  hist(randn(1000, 1), 50)
end

```

<img src="hist_1.svg" align="middle"/>

## See also

[bar](../graphics/bar.md), [patch](../graphics/patch.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
