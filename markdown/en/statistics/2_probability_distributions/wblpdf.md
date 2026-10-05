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

[wblcdf](../../statistics/2_probability_distributions/wblcdf.md), [wblinv](../../statistics/2_probability_distributions/wblinv.md), [wblrnd](../../statistics/2_probability_distributions/wblrnd.md), [wblstat](../../statistics/2_probability_distributions/wblstat.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
