# gamlike

Gamma negative log-likelihood

## 📝 Syntax

- nlogL = gamlike(params, x)
- [nlogL, avar] = gamlike(params, x, censoring, freq)

## 📥 Input argument

- params - two-element vector: shape and scale parameters.
- x - positive finite real nonempty array: sample data.
- censoring - array containing 0 or 1 values: right-censoring flags.
- freq - array of nonnegative finite values: observation frequencies.

## 📤 Output argument

- nlogL - scalar: negative log-likelihood.
- avar - 2-by-2 array: approximate covariance matrix.

## 📄 Description


<b>gamlike</b> evaluates the negative log-likelihood of the gamma distribution.

## 💡 Example



```matlab
x = [0.5 1 2 3 5 8];
phat = gamfit(x);
nlogL = gamlike(phat, x);
```


## 🔗 See also

[gamfit](../../statistics/2_probability_distributions/gamfit.md), [gampdf](../../statistics/2_probability_distributions/gampdf.md), [gamcdf](../../statistics/2_probability_distributions/gamcdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
