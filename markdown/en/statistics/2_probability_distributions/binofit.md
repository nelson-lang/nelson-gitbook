# binofit

Binomial probability estimate

## 📝 Syntax

- pHat = binofit(x, n)
- [pHat, pCI] = binofit(x, n, alpha)

## 📥 Input argument

- x - nonnegative integer finite real nonempty array: observed successes.
- n - nonnegative integer finite real nonempty array or scalar: trial counts. Each value must be greater than or equal to the corresponding value in x.
- alpha - scalar in the range [0, 1]: significance level. Default is 0.05.

## 📤 Output argument

- pHat - array: estimated binomial probabilities.
- pCI - array: confidence intervals for the estimates. The first column contains lower bounds and the second column contains upper bounds.

## 📄 Description


<b>binofit</b> estimates binomial probabilities from observed successes and trial counts.

## 💡 Example



```matlab
x = [0 2 5 8 10];
n = 10;
[pHat, pCI] = binofit(x, n);
```


## 🔗 See also

[binolike](../../statistics/2_probability_distributions/binolike.md), [binopdf](../../statistics/2_probability_distributions/binopdf.md), [binocdf](../../statistics/2_probability_distributions/binocdf.md), [binornd](../../statistics/2_probability_distributions/binornd.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
