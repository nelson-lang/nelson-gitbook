# nanmedian

Median, ignoring NaN values.

## 📝 Syntax

- m = nanmedian(X)
- m = nanmedian(X, dim)
- m = nanmedian(X, vecdim)
- m = nanmedian(X, 'all')

## 📄 Description

<b>nanmedian</b> computes the median after removing <b>NaN</b> values from each operated slice.

The default operating dimension is the first nonsingleton dimension.

## 💡 Example

```matlab
X = magic(3);
X([1 6:9]) = NaN;
m = nanmedian(X, 2)
```

## 🔗 See also

[median](../../statistics/median.md), [nanmean](../../statistics/nanmean.md), [nanstd](../../statistics/nanstd.md), [nanvar](../../statistics/nanvar.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
