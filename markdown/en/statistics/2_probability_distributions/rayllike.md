# rayllike

Rayleigh negative log-likelihood

## 📝 Syntax

- nlogL = rayllike(b, x)
- [nlogL, avar] = rayllike(b, x, censoring, freq)

## 📥 Input argument

- b - positive scalar: scale parameter.
- x - nonnegative finite real nonempty array: sample data.
- censoring - array containing 0 or 1 values: right-censoring flags.
- freq - array of nonnegative finite values: observation frequencies.

## 📤 Output argument

- nlogL - scalar: negative log-likelihood.
- avar - scalar: approximate variance.

## 📄 Description

<b>rayllike</b> evaluates the negative log-likelihood of the Rayleigh distribution.

## 💡 Example

```matlab
x = [0.5 1 2 3 5 8];
b = raylfit(x);
nlogL = rayllike(b, x);
```

## 🔗 See also

[raylfit](../../statistics/raylfit.md), [raylpdf](../../statistics/raylpdf.md), [raylcdf](../../statistics/raylcdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
