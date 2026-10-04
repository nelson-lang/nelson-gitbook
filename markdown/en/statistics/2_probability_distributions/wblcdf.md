# wblcdf

Weibull cumulative distribution function

## 📝 Syntax

- p = wblcdf(x)
- p = wblcdf(x, a)
- p = wblcdf(x, a, b)
- p = wblcdf(x, a, b, 'upper')

## 📥 Input argument

- x - real scalar or array: values.
- a - positive scalar or array: scale parameter. Default is 1.
- b - positive scalar or array: shape parameter. Default is 1.
- 'upper' - option to return the upper tail probability.

## 📤 Output argument

- p - array: probability values.

## 📄 Description

<b>wblcdf</b> evaluates Weibull cumulative probabilities element by element.

## 💡 Example

```matlab
x = [0 2 4];
p = wblcdf(x, 2, 3);
```

## 🔗 See also

[wblpdf](../../statistics/wblpdf.md), [wblinv](../../statistics/wblinv.md), [wblrnd](../../statistics/wblrnd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
