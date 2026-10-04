# skewness

Skewness of a data set.

## 📝 Syntax

- y = skewness(X)
- y = skewness(X, flag)
- y = skewness(X, flag, dim)
- y = skewness(X, flag, vecdim)
- y = skewness(X, flag, 'all')

## 📄 Description

<b>skewness</b> computes the sample skewness of numeric data. Missing numeric values are ignored.

<b>flag</b> is 1 by default. Set <b>flag</b> to 0 to apply the bias correction for sample skewness.

## 💡 Example

```matlab
X = [1 2 5; 2 4 8; 3 8 13];
y = skewness(X)
```

## 🔗 See also

[kurtosis](../../statistics/kurtosis.md), [mean](../../statistics/mean.md), [std](../../statistics/std.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
