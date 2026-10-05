# wblrnd

Weibull random numbers

## 📝 Syntax

- r = wblrnd(a, b)
- r = wblrnd(a, b, sz)
- r = wblrnd(a, b, sz1, ..., szN)

## 📥 Input argument

- a - positive scalar or array: scale parameter.
- b - positive scalar or array: shape parameter.
- sz - scalar, vector, or comma-separated dimensions: output size.

## 📤 Output argument

- r - array: random values.

## 📄 Description


<b>wblrnd</b> generates Weibull distributed random values.

## 💡 Example



```matlab
rng(0);
r = wblrnd(2, 3, 2, 3);
```


## 🔗 See also

[wblpdf](../../statistics/2_probability_distributions/wblpdf.md), [wblcdf](../../statistics/2_probability_distributions/wblcdf.md), [wblinv](../../statistics/2_probability_distributions/wblinv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
