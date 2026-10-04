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

[exppdf](../../statistics/exppdf.md), [expcdf](../../statistics/expcdf.md), [expinv](../../statistics/expinv.md), [expstat](../../statistics/expstat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
