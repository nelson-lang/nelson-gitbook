# poissfit

Poisson rate estimate

## 📝 Syntax

- lambdaHat = poissfit(x)
- [lambdaHat, lambdaCI] = poissfit(x, alpha)

## 📥 Input argument

- x - nonnegative integer finite real nonempty vector or matrix: sample counts.
- alpha - scalar in the range [0, 1]: significance level. Default is 0.05.

## 📤 Output argument

- lambdaHat - array: Poisson rate estimates.
- lambdaCI - array: confidence intervals for the estimates.

## 📄 Description

<b>poissfit</b> estimates the rate parameter of the Poisson distribution.

## 💡 Example

```matlab
x = [0 1 2 3 5 8];
[lambdaHat, lambdaCI] = poissfit(x);
```

## 🔗 See also

[poisslike](../../statistics/poisslike.md), [poisspdf](../../statistics/poisspdf.md), [poisscdf](../../statistics/poisscdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
