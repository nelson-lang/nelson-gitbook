# histfit

Histogram with fitted distribution curve.

## 📝 Syntax

- histfit(data)
- histfit(data, nbins)
- histfit(data, nbins, dist)
- histfit(ax, ...)
- h = histfit(...)

## 📄 Description

<b>histfit</b> displays a histogram and overlays a fitted probability density curve scaled to the histogram counts.

The default distribution is normal. Supported distribution names include normal, kernel, exponential, gamma, beta, extreme value, half normal, lognormal, logistic, loglogistic, rayleigh, and weibull.

## 💡 Example

```matlab
x = randn(100, 1);
histfit(x, 12)
```

## 🔗 See also

[histogram](../../graphics/histogram.md), [ksdensity](../../statistics/ksdensity.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
