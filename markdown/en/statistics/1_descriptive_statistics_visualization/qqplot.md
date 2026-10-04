# qqplot

Quantile-quantile plot.

## 📝 Syntax

- qqplot(x)
- qqplot(x, y)
- qqplot(..., p)
- h = qqplot(...)

## 📄 Description

<b>qqplot</b> creates a quantile-quantile plot for sample data.

With one sample, Nelson compares sample quantiles with standard normal quantiles. With two samples, Nelson compares empirical quantiles from both samples. The returned value contains the line handles for the data, the quartile line, and the extrapolated reference line.

## 💡 Example

```matlab
x = randn(100, 1);
qqplot(x)
```

## 🔗 See also

[quantile](../../statistics/quantile.md), [norminv](../../statistics/norminv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
