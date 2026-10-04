# lognfit

Lognormal parameter estimates

## 📝 Syntax

- phat = lognfit(x)
- [phat, pci] = lognfit(x, alpha)
- [phat, pci] = lognfit(x, alpha, censoring, freq)
- [phat, pci] = lognfit(x, alpha, censoring, freq, options)

## 📥 Input argument

- x - positive finite real nonempty vector or matrix: sample data.
- alpha - scalar in the range [0, 1]: significance level. Default is 0.05.
- censoring - array containing 0 or 1 values: right-censoring flags.
- freq - array of nonnegative finite values: observation frequencies.
- options - scalar structure: fitting options. MaxIter and TolX are used when supplied.

## 📤 Output argument

- phat - array: estimates for mu and sigma parameters.
- pci - array: confidence intervals for the estimates.

## 📄 Description

<b>lognfit</b> estimates the parameters of the lognormal distribution.

## 💡 Example

```matlab
x = [0.5 1 2 3 5 8];
[phat, pci] = lognfit(x);
```

## 🔗 See also

[lognlike](../../statistics/lognlike.md), [lognpdf](../../statistics/lognpdf.md), [logncdf](../../statistics/logncdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
