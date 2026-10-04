# nanstd

Standard deviation, ignoring NaN values.

## 📝 Syntax

- s = nanstd(X)
- s = nanstd(X, flag)
- s = nanstd(X, flag, dim)
- s = nanstd(X, flag, vecdim)
- s = nanstd(X, flag, 'all')

## 📄 Description

<b>nanstd</b> computes the standard deviation after removing <b>NaN</b> values from each operated slice.

<b>flag</b> is <b>0</b> for sample normalization and <b>1</b> for population normalization.

## 💡 Example

```matlab
X = magic(3);
X([1 6:9]) = NaN;
s = nanstd(X, 0, 2)
```

## 🔗 See also

[std](../../statistics/std.md), [nanmean](../../statistics/nanmean.md), [nanmedian](../../statistics/nanmedian.md), [nanvar](../../statistics/nanvar.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
