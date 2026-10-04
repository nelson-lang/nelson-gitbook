# histcounts2

Bivariate histogram bin counts.

## 📝 Syntax

- N = histcounts2(X, Y)
- N = histcounts2(X, Y, nbins)
- N = histcounts2(X, Y, Xedges, Yedges)
- N = histcounts2(..., 'Normalization', method)
- [N, Xedges, Yedges] = histcounts2(...)

## 📥 Input argument

- X - numeric or logical array with the first coordinate of each pair.
- Y - numeric or logical array with the second coordinate of each pair. X and Y must have the same number of elements.
- nbins - positive integer scalar, or a two-element vector [nx ny] giving the number of bins in each dimension.
- Xedges, Yedges - strictly increasing numeric vectors that define the bin edges along X and Y.
- method - normalization: 'count' (default), 'probability', 'countdensity', 'pdf', 'cumcount' or 'cdf'.

## 📤 Output argument

- N - matrix of bin counts. N(i, j) counts the pairs that fall in the i-th X bin and the j-th Y bin.
- Xedges - bin edges used along the X dimension.
- Yedges - bin edges used along the Y dimension.

## 📄 Description

histcounts2 partitions the (X, Y) pairs into a two-dimensional grid of bins and counts how many pairs fall into each bin.

N(i, j) counts the pairs for which Xedges(i) <= X < Xedges(i+1) and Yedges(j) <= Y < Yedges(j+1). The last bin of each dimension is closed on both ends.

You can supply the number of bins (a scalar, or [nx ny]) or the explicit edge vectors Xedges and Yedges. When a number of bins is requested, the edges are chosen on a 'nice' grid, the same way as [histcounts](../../elementary_functions/histcounts.md). Pairs with a NaN coordinate are ignored.

## Used function(s)

    histcounts2

## 💡 Examples

Count pairs on an explicit 2-D grid.

```matlab
x = [1 2 3];
y = [1 2 3];
N = histcounts2(x, y, [0 2 4], [0 2 4])
```

Automatically chosen edges with a number of bins.

```matlab
[N, xe, ye] = histcounts2([1 5 10 3 7], [2 4 6 8 1], 3)
```

## 🔗 See also

[histcounts](../../elementary_functions/histcounts.md), [discretize](../../data_analysis/discretize.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
