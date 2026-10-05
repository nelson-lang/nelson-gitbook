# unidlike

Discrete uniform negative log-likelihood

## 📝 Syntax

- nlogL = unidlike(n, x)
- [nlogL, avar] = unidlike(n, x)

## 📥 Input argument

- n - positive integer scalar: maximum value.
- x - positive integer finite real nonempty array: sample data.

## 📤 Output argument

- nlogL - scalar: negative log-likelihood.
- avar - scalar: asymptotic variance estimate.

## 📄 Description


<b>unidlike</b> returns the negative log-likelihood for discrete uniform distribution data.

## 💡 Example



```matlab
x = [1 2 4 5 5];
[nlogL, avar] = unidlike(5, x);
```


## 🔗 See also

[unidfit](../../statistics/2_probability_distributions/unidfit.md), [unidpdf](../../statistics/2_probability_distributions/unidpdf.md), [unidcdf](../../statistics/2_probability_distributions/unidcdf.md), [unidrnd](../../statistics/2_probability_distributions/unidrnd.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
