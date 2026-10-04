# histcounts

Histogram bin counts.

## 📝 Syntax

- N = histcounts(X)
- N = histcounts(X, nbins)
- N = histcounts(X, edges)
- [N, edges, bin] = histcounts(...)

## 📥 Input argument

- X - numeric or logical array containing the data to bin.
- nbins - positive integer scalar: requested number of bins.
- edges - strictly increasing numeric vector that defines bin edges.

## 📤 Output argument

- N - row vector of bin counts.
- edges - bin edges used for the count.
- bin - array with the same shape as X containing the bin index for each element.

## 📄 Description

histcounts counts the elements of X that fall into consecutive histogram bins.

You can specify either a number of bins or a vector of monotonically increasing bin edges. The last bin includes its right edge.

## Used function(s)

    histcounts

## 💡 Example

Count values with explicit bin edges.

```matlab
x = [0 1 1 2 3 3 4];
[N, edges, bin] = histcounts(x, 0:2:4)
```

## 🔗 See also

[sortrows](../../elementary_functions/sortrows.md), [histogram](../../graphics/histogram.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
