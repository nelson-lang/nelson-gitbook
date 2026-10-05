# normlike

Normal negative log-likelihood

## 📝 Syntax

- nlogL = normlike(params, x)
- [nlogL, avar] = normlike(params, x)
- [nlogL, avar] = normlike(params, x, censoring, freq)

## 📥 Input argument

- params - two-element real vector [mu sigma]: normal distribution parameters.
- x - finite real nonempty array: sample data.
- censoring - array containing 0 or 1 values: right-censoring flags.
- freq - array of nonnegative finite values: observation frequencies.

## 📤 Output argument

- nlogL - scalar: negative log-likelihood.
- avar - 2-by-2 array: asymptotic covariance estimate.

## 📄 Description


<b>normlike</b> returns the negative log-likelihood for normal distribution data and the asymptotic covariance estimate.

## 💡 Example



```matlab
x = [-2 -1 0 1 3 5];
[nlogL, avar] = normlike([1 2], x);
```


## 🔗 See also

[normfit](../../statistics/2_probability_distributions/normfit.md), [normpdf](../../statistics/2_probability_distributions/normpdf.md), [normcdf](../../statistics/2_probability_distributions/normcdf.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
