# histc

Histogram count with explicit edges.

## 📝 Syntax

- N = histc(X, edges)
- [N, bin] = histc(X, edges)
- N = histc(X, edges, dim)

## 📥 Input argument

- X - Numeric or logical array.
- edges - Numeric vector of bin edges.
- dim - Dimension to operate along.

## 📤 Output argument

- N - Counts for each edge interval.
- bin - Bin index for each element of X.

## 📄 Description

<b>histc</b> counts values in bins defined by <b>edges</b>. Values equal to the last edge are counted in the last bin.

## 💡 Example

```matlab
[N, bin] = histc([0 1 1.5 2], [0 1 2])
```

## 🔗 See also

[histcounts](../../elementary_functions/histcounts.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
