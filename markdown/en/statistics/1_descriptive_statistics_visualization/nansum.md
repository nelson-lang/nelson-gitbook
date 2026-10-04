# nansum

Sum, ignoring NaN values.

## 📝 Syntax

- y = nansum(X)
- y = nansum(X, dim)
- y = nansum(X, vecdim)
- y = nansum(X, 'all')

## 📄 Description

<b>nansum</b> computes the sum after removing <b>NaN</b> values from each operated slice; a slice made only of <b>NaN</b> sums to <b>0</b>.

The default operating dimension is the first nonsingleton dimension.

It is equivalent to <b>sum(X, ..., 'omitnan')</b>.

## 💡 Example

```matlab
y = nansum([1 NaN 3 NaN 5])
```

## 🔗 See also

[sum](../../data_analysis/sum.md), [nanmean](../../statistics/nanmean.md), [nanmax](../../statistics/nanmax.md), [nanmin](../../statistics/nanmin.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
