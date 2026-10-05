# explike

Exponential negative log-likelihood

## 📝 Syntax

- nlogL = explike(mu, x)
- [nlogL, avar] = explike(mu, x)
- [nlogL, avar] = explike(mu, x, censoring, freq)

## 📥 Input argument

- mu - positive scalar: exponential mean parameter.
- x - nonnegative finite real nonempty array: sample data.
- censoring - array containing 0 or 1 values: right-censoring flags.
- freq - array of nonnegative finite values: observation frequencies.

## 📤 Output argument

- nlogL - scalar: negative log-likelihood.
- avar - scalar: asymptotic variance estimate.

## 📄 Description


<b>explike</b> returns the negative log-likelihood for exponential distribution data and the asymptotic variance estimate.

## 💡 Example



```matlab
x = [0.5 1 2 3 5 8];
[nlogL, avar] = explike(3.25, x);
```


## 🔗 See also

[expfit](../../statistics/2_probability_distributions/expfit.md), [exppdf](../../statistics/2_probability_distributions/exppdf.md), [expcdf](../../statistics/2_probability_distributions/expcdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
