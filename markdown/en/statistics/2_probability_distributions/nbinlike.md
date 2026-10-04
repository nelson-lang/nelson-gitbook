# nbinlike

Negative binomial negative log-likelihood

## 📝 Syntax

- nlogL = nbinlike(params, x)
- [nlogL, avar] = nbinlike(params, x, censoring, freq)

## 📥 Input argument

- params - two-element vector containing r and p.
- x - nonnegative integer finite real nonempty array: observed failures.
- censoring - array with values 0 or 1. Default is all zeros.
- freq - nonnegative finite array of observation frequencies. Default is all ones.

## 📤 Output argument

- nlogL - scalar: negative log-likelihood.
- avar - matrix: asymptotic covariance estimate.

## 📄 Description

<b>nbinlike</b> returns the negative log-likelihood for negative binomial distribution data and the asymptotic covariance estimate.

## 💡 Example

```matlab
x = [0 1 2 4 6 9 12 15];
[nlogL, avar] = nbinlike([4 0.45], x);
```

## 🔗 See also

[nbinfit](../../statistics/nbinfit.md), [nbinpdf](../../statistics/nbinpdf.md), [nbincdf](../../statistics/nbincdf.md), [nbinrnd](../../statistics/nbinrnd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
