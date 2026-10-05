# raylfit

Rayleigh scale estimate

## 📝 Syntax

- phat = raylfit(x)
- [phat, pci] = raylfit(x, alpha)
- [phat, pci] = raylfit(x, alpha, censoring, freq)

## 📥 Input argument

- x - nonnegative finite real nonempty vector or matrix: sample data.
- alpha - scalar in the range [0, 1]: significance level. Default is 0.05.
- censoring - array containing 0 or 1 values: right-censoring flags.
- freq - array of nonnegative finite values: observation frequencies.

## 📤 Output argument

- phat - array: scale parameter estimates.
- pci - array: confidence intervals for the estimates.

## 📄 Description


<b>raylfit</b> estimates the scale parameter of the Rayleigh distribution.

## 💡 Example



```matlab
x = [0.5 1 2 3 5 8];
[phat, pci] = raylfit(x);
```


## 🔗 See also

[rayllike](../../statistics/2_probability_distributions/rayllike.md), [raylpdf](../../statistics/2_probability_distributions/raylpdf.md), [raylcdf](../../statistics/2_probability_distributions/raylcdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
