# wblstat

Weibull mean and variance

## 📝 Syntax

- [m, v] = wblstat(a, b)

## 📥 Input argument

- a - positive scalar or array: scale parameter.
- b - positive scalar or array: shape parameter.

## 📤 Output argument

- m - array: mean values.
- v - array: variance values.

## 📄 Description

<b>wblstat</b> returns the mean and variance of the Weibull distribution.

## 💡 Example

```matlab
[m, v] = wblstat(2, 3);
```

## 🔗 See also

[wblpdf](../../statistics/wblpdf.md), [wblcdf](../../statistics/wblcdf.md), [wblinv](../../statistics/wblinv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
