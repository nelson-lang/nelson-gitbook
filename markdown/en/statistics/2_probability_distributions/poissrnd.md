# poissrnd

Poisson random numbers

## 📝 Syntax

- r = poissrnd(lambda)
- r = poissrnd(lambda, sz)
- r = poissrnd(lambda, sz1, ..., szN)

## 📥 Input argument

- lambda - nonnegative scalar or array: rate parameter.
- sz - scalar, vector, or comma-separated dimensions: output size.

## 📤 Output argument

- r - array: random values.

## 📄 Description

<b>poissrnd</b> generates Poisson distributed random values. Scalar parameters are expanded to match the requested output size.

## 💡 Example

```matlab
rng(0);
r = poissrnd(4, 2, 3);
```

## 🔗 See also

[poisspdf](../../statistics/poisspdf.md), [poisscdf](../../statistics/poisscdf.md), [poissinv](../../statistics/poissinv.md), [poissstat](../../statistics/poissstat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
