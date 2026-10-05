# gamfit

Gamma parameter estimates

## 📝 Syntax

- phat = gamfit(x)
- [phat, pci] = gamfit(x, alpha)
- [phat, pci] = gamfit(x, alpha, censoring, freq)
- [phat, pci] = gamfit(x, alpha, censoring, freq, options)

## 📥 Input argument

- x - positive finite real nonempty vector or matrix: sample data.
- alpha - scalar in the range [0, 1]: significance level. Default is 0.05.
- censoring - array containing 0 or 1 values: right-censoring flags.
- freq - array of nonnegative finite values: observation frequencies.
- options - scalar structure: fitting options. MaxIter and TolX are used when supplied.

## 📤 Output argument

- phat - array: estimates for shape and scale parameters.
- pci - array: confidence intervals for the estimates.

## 📄 Description


<b>gamfit</b> estimates the parameters of the gamma distribution.

## 💡 Example



```matlab
x = [0.5 1 2 3 5 8];
[phat, pci] = gamfit(x);
```


## 🔗 See also

[gamlike](../../statistics/2_probability_distributions/gamlike.md), [gampdf](../../statistics/2_probability_distributions/gampdf.md), [gamcdf](../../statistics/2_probability_distributions/gamcdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
