# gevlike

Generalized extreme value negative log-likelihood

## 📝 Syntax

- nlogL = gevlike(params, x)
- [nlogL, avar] = gevlike(params, x, censoring, freq)

## 📥 Input argument

- params - three-element vector: shape, scale, and location parameters.
- x - real finite nonempty array: sample data.
- censoring - array containing 0 or 1 values: right-censoring flags.
- freq - array of nonnegative finite values: observation frequencies.

## 📤 Output argument

- nlogL - scalar: negative log-likelihood.
- avar - 3-by-3 array: approximate covariance matrix.

## 📄 Description

<b>gevlike</b> evaluates the negative log-likelihood of the generalized extreme value distribution.

## 💡 Example

```matlab
x = [-1.2 -0.4 0.1 0.8 1.5 2.8 4.0];
phat = gevfit(x);
nlogL = gevlike(phat, x);
```

## 🔗 See also

[gevfit](../../statistics/gevfit.md), [gevpdf](../../statistics/gevpdf.md), [gevcdf](../../statistics/gevcdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
