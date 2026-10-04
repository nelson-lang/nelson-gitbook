# ecdf

Empirical cumulative distribution function.

## 📝 Syntax

- [f, x] = ecdf(y)
- [f, x] = ecdf(y, Name, Value)
- [f, x, flo, fup] = ecdf(...)
- ecdf(...)
- ecdf(ax, ...)

## 📄 Description

<b>ecdf</b> computes empirical distribution values from sample data.

Name-value arguments include Function, Censoring, Frequency, Alpha, and Bounds. Supported function types are cdf, survivor, and cumhazard. Bounds can be on or off for plotting.

## 💡 Example

```matlab
y = [3 1 2 2];
[f, x] = ecdf(y)
```

## 🔗 See also

[kstest](../../statistics/kstest.md), [ksdensity](../../statistics/ksdensity.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
