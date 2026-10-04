# nbinfit

Negative binomial parameter estimates

## 📝 Syntax

- phat = nbinfit(x)
- [phat, pci] = nbinfit(x, alpha, censoring, freq, options)

## 📥 Input argument

- x - nonnegative integer finite real nonempty vector or matrix: observed failures.
- alpha - scalar in the range [0, 1]: significance level. Default is 0.05.
- censoring - array with values 0 or 1. Default is all zeros.
- freq - nonnegative finite array of observation frequencies. Default is all ones.
- options - structure created by statset. MaxIter and TolX are used.

## 📤 Output argument

- phat - array: estimates of r and p.
- pci - array: confidence intervals for r and p.

## 📄 Description

<b>nbinfit</b> estimates the negative binomial distribution parameters.

## 💡 Example

```matlab
x = [0 1 2 4 6 9 12 15];
[phat, pci] = nbinfit(x);
```

## 🔗 See also

[nbinlike](../../statistics/nbinlike.md), [nbinpdf](../../statistics/nbinpdf.md), [nbincdf](../../statistics/nbincdf.md), [nbinrnd](../../statistics/nbinrnd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
