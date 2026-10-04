# wblpdf

Weibull probability density function

## 📝 Syntax

- y = wblpdf(x)
- y = wblpdf(x, a)
- y = wblpdf(x, a, b)

## 📥 Input argument

- x - real scalar or array: values.
- a - positive scalar or array: scale parameter. Default is 1.
- b - positive scalar or array: shape parameter. Default is 1.

## 📤 Output argument

- y - array: density values.

## 📄 Description

<b>wblpdf</b> evaluates Weibull probability density values element by element.

## 💡 Example

```matlab
x = [0 2 4];
y = wblpdf(x, 2, 3);
```

## 🔗 See also

[wblcdf](../../statistics/wblcdf.md), [wblinv](../../statistics/wblinv.md), [wblrnd](../../statistics/wblrnd.md), [wblstat](../../statistics/wblstat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
