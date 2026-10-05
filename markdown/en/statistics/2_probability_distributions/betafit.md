# betafit

Beta parameter estimates

## 📝 Syntax

- phat = betafit(x)
- [phat, pci] = betafit(x, alpha)

## 📥 Input argument

- x - finite real nonempty vector or matrix with values in the open interval (0, 1): sample data.
- alpha - scalar in the range [0, 1]: significance level. Default is 0.05.

## 📤 Output argument

- phat - array: beta distribution shape parameter estimates.
- pci - array: confidence intervals for the estimates.

## 📄 Description


<b>betafit</b> estimates the two shape parameters of the beta distribution.

## 💡 Example



```matlab
x = [0.12 0.2 0.35 0.5 0.7 0.85];
[phat, pci] = betafit(x);
```


## 🔗 See also

[betalike](../../statistics/2_probability_distributions/betalike.md), [betapdf](../../statistics/2_probability_distributions/betapdf.md), [betacdf](../../statistics/2_probability_distributions/betacdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
