# evrnd

Extreme value random numbers

## 📝 Syntax

- r = evrnd(mu, sigma)
- r = evrnd(mu, sigma, sz)
- r = evrnd(mu, sigma, sz1, ..., szN)

## 📥 Input argument

- mu - real scalar or array: location parameter.
- sigma - positive scalar or array: scale parameter.
- sz - scalar, vector, or comma-separated dimensions: output size.

## 📤 Output argument

- r - array: random values.

## 📄 Description


<b>evrnd</b> generates extreme value distributed random values.

## 💡 Example



```matlab
rng(0);
r = evrnd(0, 1, 2, 3);
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
