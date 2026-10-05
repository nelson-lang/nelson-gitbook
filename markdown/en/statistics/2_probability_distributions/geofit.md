# geofit

Geometric probability estimate

## 📝 Syntax

- pHat = geofit(x)
- [pHat, pCI] = geofit(x, alpha)

## 📥 Input argument

- x - nonnegative integer finite real nonempty vector or matrix: failure counts before success.
- alpha - scalar in the range [0, 1]: significance level. Default is 0.05.

## 📤 Output argument

- pHat - array: success probability estimates.
- pCI - array: confidence intervals for the estimates.

## 📄 Description


<b>geofit</b> estimates the success probability of the geometric distribution.

## 💡 Example



```matlab
x = [0 1 2 3 5 8];
[pHat, pCI] = geofit(x);
```


## 🔗 See also

[geolike](../../statistics/2_probability_distributions/geolike.md), [geopdf](../../statistics/2_probability_distributions/geopdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
