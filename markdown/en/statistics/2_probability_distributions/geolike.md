# geolike

Geometric negative log-likelihood

## 📝 Syntax

- nlogL = geolike(p, x)
- [nlogL, avar] = geolike(p, x)

## 📥 Input argument

- p - scalar in the range [0, 1]: success probability.
- x - nonnegative integer finite real nonempty array: failure counts before success.

## 📤 Output argument

- nlogL - scalar: negative log-likelihood.
- avar - scalar: asymptotic variance estimate.

## 📄 Description


<b>geolike</b> returns the negative log-likelihood for geometric distribution data and the asymptotic variance estimate.

## 💡 Example



```matlab
x = [0 1 2 3 5 8];
[nlogL, avar] = geolike(0.25, x);
```


## 🔗 See also

[geofit](../../statistics/2_probability_distributions/geofit.md), [geopdf](../../statistics/2_probability_distributions/geopdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
