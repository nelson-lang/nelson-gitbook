# exprnd

Exponential random numbers

## 📝 Syntax

- r = exprnd(mu)
- r = exprnd(mu, sz)
- r = exprnd(mu, sz1, ..., szN)

## 📥 Input argument

- mu - positive scalar or array: mean parameter.
- sz - scalar, vector, or comma-separated dimensions: output size.

## 📤 Output argument

- r - array: random values.

## 📄 Description


<b>exprnd</b> generates exponential distributed random values.

## 💡 Example



```matlab
rng(0);
r = exprnd(2, 2, 3);
```


## 🔗 See also

[exppdf](../../statistics/2_probability_distributions/exppdf.md), [expcdf](../../statistics/2_probability_distributions/expcdf.md), [expinv](../../statistics/2_probability_distributions/expinv.md), [expstat](../../statistics/2_probability_distributions/expstat.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
