# uniflike

Continuous uniform negative log-likelihood

## 📝 Syntax

- nlogL = uniflike(params, x)
- [nlogL, avar] = uniflike(params, x, censoring, freq)

## 📥 Input argument

- params - two-element vector containing the lower and upper endpoints.
- x - real nonempty array: sample data.
- censoring - array with values 0 or 1. Default is all zeros.
- freq - nonnegative finite array of observation frequencies. Default is all ones.

## 📤 Output argument

- nlogL - scalar: negative log-likelihood.
- avar - matrix: asymptotic covariance estimate.

## 📄 Description


<b>uniflike</b> returns the negative log-likelihood for continuous uniform distribution data.

## 💡 Example



```matlab
x = [2 5 3 4];
[nlogL, avar] = uniflike([1 6], x);
```


## 🔗 See also

[unifit](../../statistics/2_probability_distributions/unifit.md), [unifpdf](../../statistics/2_probability_distributions/unifpdf.md), [unifcdf](../../statistics/2_probability_distributions/unifcdf.md), [unifrnd](../../statistics/2_probability_distributions/unifrnd.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
