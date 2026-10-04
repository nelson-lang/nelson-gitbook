# nanmean

Mean, ignoring NaN values.

## 📝 Syntax

- m = nanmean(X)
- m = nanmean(X, dim)
- m = nanmean(X, vecdim)
- m = nanmean(X, 'all')

## 📄 Description

<b>nanmean</b> computes the mean after removing <b>NaN</b> values from each operated slice.

The default operating dimension is the first nonsingleton dimension.

## 💡 Example

```matlab
X = magic(3);
X([1 6:9]) = NaN;
m = nanmean(X)
```

## 🔗 See also

[mean](../../statistics/mean.md), [nanmedian](../../statistics/nanmedian.md), [nanstd](../../statistics/nanstd.md), [nanvar](../../statistics/nanvar.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
