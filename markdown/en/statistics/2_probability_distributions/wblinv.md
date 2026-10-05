# wblinv

Weibull inverse cumulative distribution function

## 📝 Syntax

- x = wblinv(p)
- x = wblinv(p, a)
- x = wblinv(p, a, b)

## 📥 Input argument

- p - real scalar or array: probability values.
- a - positive scalar or array: scale parameter. Default is 1.
- b - positive scalar or array: shape parameter. Default is 1.

## 📤 Output argument

- x - array: inverse probability values.

## 📄 Description


<b>wblinv</b> evaluates Weibull inverse cumulative probabilities element by element.

## 💡 Example



```matlab
p = [0 0.5 0.9];
x = wblinv(p, 2, 3);
```


## 🔗 See also

[wblpdf](../../statistics/2_probability_distributions/wblpdf.md), [wblcdf](../../statistics/2_probability_distributions/wblcdf.md), [wblrnd](../../statistics/2_probability_distributions/wblrnd.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
