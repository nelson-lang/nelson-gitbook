# gevinv

Generalized extreme value inverse cumulative distribution function

## 📝 Syntax

- x = gevinv(p, k, sigma, mu)

## 📥 Input argument

- p - real array in the range [0, 1]: probabilities.
- k - real array: shape parameter.
- sigma - positive real array: scale parameter.
- mu - real array: location parameter.

## 📤 Output argument

- x - array: quantiles.

## 📄 Description


<b>gevinv</b> computes generalized extreme value quantiles element by element.

## 💡 Example



```matlab
p = [0.1 0.5 0.9];
x = gevinv(p, 0.2, 1, 0);
```


## 🔗 See also

[gevpdf](../../statistics/2_probability_distributions/gevpdf.md), [gevcdf](../../statistics/2_probability_distributions/gevcdf.md), [gevrnd](../../statistics/2_probability_distributions/gevrnd.md), [gevstat](../../statistics/2_probability_distributions/gevstat.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
