# evcdf

Extreme value cumulative distribution function

## 📝 Syntax

- p = evcdf(x)
- p = evcdf(x, mu)
- p = evcdf(x, mu, sigma)
- p = evcdf(x, mu, sigma, 'upper')

## 📥 Input argument

- x - real scalar or array: values.
- mu - real scalar or array: location parameter. Default is 0.
- sigma - positive scalar or array: scale parameter. Default is 1.
- 'upper' - option to return the upper tail probability.

## 📤 Output argument

- p - array: probability values.

## 📄 Description


<b>evcdf</b> evaluates extreme value cumulative probabilities element by element.

## 💡 Example



```matlab
x = [-2 -1 0 1 2];
p = evcdf(x, 0, 1);
```


## 🔗 See also

[evpdf](../../statistics/2_probability_distributions/evpdf.md), [evinv](../../statistics/2_probability_distributions/evinv.md), [evrnd](../../statistics/2_probability_distributions/evrnd.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
