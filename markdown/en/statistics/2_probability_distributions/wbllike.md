# wbllike

Weibull negative log-likelihood

## 📝 Syntax

- nlogL = wbllike(params, x)
- [nlogL, avar] = wbllike(params, x, censoring, freq)

## 📥 Input argument

- params - two-element vector: scale and shape parameters.
- x - positive finite real nonempty array: sample data.
- censoring - array containing 0 or 1 values: right-censoring flags.
- freq - array of nonnegative finite values: observation frequencies.

## 📤 Output argument

- nlogL - scalar: negative log-likelihood.
- avar - 2-by-2 array: approximate covariance matrix.

## 📄 Description

<b>wbllike</b> evaluates the negative log-likelihood of the Weibull distribution.

## 💡 Example

```matlab
x = [0.5 1 2 3 5 8];
phat = wblfit(x);
nlogL = wbllike(phat, x);
```

## 🔗 See also

[wblfit](../../statistics/wblfit.md), [wblpdf](../../statistics/wblpdf.md), [wblcdf](../../statistics/wblcdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
