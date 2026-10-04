# wblfit

Weibull parameter estimates

## 📝 Syntax

- phat = wblfit(x)
- [phat, pci] = wblfit(x, alpha)
- [phat, pci] = wblfit(x, alpha, censoring, freq)
- [phat, pci] = wblfit(x, alpha, censoring, freq, options)

## 📥 Input argument

- x - positive finite real nonempty vector or matrix: sample data.
- alpha - scalar in the range [0, 1]: significance level. Default is 0.05.
- censoring - array containing 0 or 1 values: right-censoring flags.
- freq - array of nonnegative finite values: observation frequencies.
- options - scalar structure: fitting options. MaxIter and TolX are used when supplied.

## 📤 Output argument

- phat - array: estimates for scale and shape parameters.
- pci - array: confidence intervals for the estimates.

## 📄 Description

<b>wblfit</b> estimates the parameters of the Weibull distribution.

## 💡 Example

```matlab
x = [0.5 1 2 3 5 8];
[phat, pci] = wblfit(x);
```

## 🔗 See also

[wbllike](../../statistics/wbllike.md), [wblpdf](../../statistics/wblpdf.md), [wblcdf](../../statistics/wblcdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
