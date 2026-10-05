# evstat

Extreme value mean and variance

## 📝 Syntax

- [m, v] = evstat(mu, sigma)

## 📥 Input argument

- mu - real scalar or array: location parameter.
- sigma - positive scalar or array: scale parameter.

## 📤 Output argument

- m - array: mean values.
- v - array: variance values.

## 📄 Description


<b>evstat</b> returns the mean and variance of the extreme value distribution.

## 💡 Example



```matlab
[m, v] = evstat(0, 1);
```


## 🔗 See also

[evpdf](../../statistics/2_probability_distributions/evpdf.md), [evcdf](../../statistics/2_probability_distributions/evcdf.md), [evinv](../../statistics/2_probability_distributions/evinv.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
