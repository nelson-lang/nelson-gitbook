# jbtest

Jarque-Bera normality test.

## 📝 Syntax

- h = jbtest(x)
- h = jbtest(x, alpha)
- h = jbtest(x, alpha, mctol)
- [h, p, jbstat, critval] = jbtest(...)

## 📄 Description

<b>jbtest</b> performs a Jarque-Bera test for normality with unknown mean and variance. <b>NaN</b> observations are omitted.

The optional <b>alpha</b> argument sets the significance level. The optional <b>mctol</b> argument is accepted for syntax compatibility; this implementation uses the deterministic chi-square approximation.

## 💡 Example

```matlab
x = [1 2 3 4 5];
[h, p, jbstat, critval] = jbtest(x)
```

## 🔗 See also

[chi2gof](../../statistics/chi2gof.md), [kstest](../../statistics/kstest.md), [normcdf](../../statistics/normcdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
