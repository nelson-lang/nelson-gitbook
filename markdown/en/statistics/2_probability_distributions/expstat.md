# expstat

Exponential mean and variance

## 📝 Syntax

- [m, v] = expstat(mu)

## 📥 Input argument

- mu - positive scalar or array: mean parameter.

## 📤 Output argument

- m - array: mean values.
- v - array: variance values.

## 📄 Description

<b>expstat</b> returns the mean and variance of the exponential distribution.

## 💡 Example

```matlab
[m, v] = expstat(3);
```

## 🔗 See also

[exppdf](../../statistics/exppdf.md), [expcdf](../../statistics/expcdf.md), [expinv](../../statistics/expinv.md), [exprnd](../../statistics/exprnd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
