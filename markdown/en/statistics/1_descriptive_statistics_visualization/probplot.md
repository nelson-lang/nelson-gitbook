# probplot

Probability plot.

## 📝 Syntax

- probplot(y)
- probplot(y, cens)
- probplot(y, cens, freq)
- probplot(dist, ...)
- probplot(..., 'noref')
- h = probplot(...)

## 📄 Description

<b>probplot</b> creates a probability plot for sample data.

The default distribution is normal. Supported distribution names include normal, exponential, extreme value, half normal, lognormal, logistic, loglogistic, rayleigh, and weibull. The returned value contains line handles for data points and, unless noref is specified, reference lines.

## 💡 Example

```matlab
x = randn(100, 1);
probplot(x)
```

## 🔗 See also

[qqplot](../../statistics/qqplot.md), [ecdf](../../statistics/ecdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
