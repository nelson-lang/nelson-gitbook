# lognstat

Lognormal mean and variance

## 📝 Syntax

- [m, v] = lognstat(mu, sigma)

## 📥 Input argument

- mu - real scalar or array: mean of logarithmic values.
- sigma - nonnegative scalar or array: standard deviation of logarithmic values.

## 📤 Output argument

- m - array: means.
- v - array: variances.

## 📄 Description

<b>lognstat</b> returns the element-wise mean and variance of lognormal distributions.

## 💡 Example

```matlab
[m, v] = lognstat(0, 1);
```

## 🔗 See also

[lognpdf](../../statistics/lognpdf.md), [lognrnd](../../statistics/lognrnd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
