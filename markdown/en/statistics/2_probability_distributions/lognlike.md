# lognlike

Lognormal negative log-likelihood

## 📝 Syntax

- nlogL = lognlike(params, x)
- [nlogL, avar] = lognlike(params, x, censoring, freq)

## 📥 Input argument

- params - two-element vector: mu and sigma parameters.
- x - positive finite real nonempty array: sample data.
- censoring - array containing 0 or 1 values: right-censoring flags.
- freq - array of nonnegative finite values: observation frequencies.

## 📤 Output argument

- nlogL - scalar: negative log-likelihood.
- avar - 2-by-2 array: approximate covariance matrix.

## 📄 Description


<b>lognlike</b> evaluates the negative log-likelihood of the lognormal distribution.

## 💡 Example



```matlab
x = [0.5 1 2 3 5 8];
phat = lognfit(x);
nlogL = lognlike(phat, x);
```


## 🔗 See also

[lognfit](../../statistics/2_probability_distributions/lognfit.md), [lognpdf](../../statistics/2_probability_distributions/lognpdf.md), [logncdf](../../statistics/2_probability_distributions/logncdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
