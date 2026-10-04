# lognpdf

Lognormal probability density function

## 📝 Syntax

- y = lognpdf(x)
- y = lognpdf(x, mu)
- y = lognpdf(x, mu, sigma)

## 📥 Input argument

- x - real scalar or array: values.
- mu - real scalar or array: mean of logarithmic values. The default is 0.
- sigma - positive scalar or array: standard deviation of logarithmic values. The default is 1.

## 📤 Output argument

- y - array: density values.

## 📄 Description

<b>lognpdf</b> evaluates lognormal probability density values element by element.

Scalar parameters are expanded to match array inputs.

## 💡 Example

```matlab
x = [0 1 exp(1)];
y = lognpdf(x, 0, 1);
```

## 🔗 See also

[logncdf](../../statistics/logncdf.md), [logninv](../../statistics/logninv.md), [lognrnd](../../statistics/lognrnd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
