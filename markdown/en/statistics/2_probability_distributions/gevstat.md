# gevstat

Generalized extreme value mean and variance

## 📝 Syntax

- m = gevstat(k, sigma, mu)
- [m, v] = gevstat(k, sigma, mu)

## 📥 Input argument

- k - real array: shape parameter.
- sigma - positive real array: scale parameter.
- mu - real array: location parameter.

## 📤 Output argument

- m - array: mean values.
- v - array: variance values.

## 📄 Description


<b>gevstat</b> computes mean and variance for generalized extreme value distributions when they are finite.

## 💡 Example



```matlab
[m, v] = gevstat([0 0.2], [1 1], [0 0]);
```


## 🔗 See also

[gevpdf](../../statistics/2_probability_distributions/gevpdf.md), [gevcdf](../../statistics/2_probability_distributions/gevcdf.md), [gevinv](../../statistics/2_probability_distributions/gevinv.md), [gevrnd](../../statistics/2_probability_distributions/gevrnd.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
