# gamrnd

Gamma random numbers

## 📝 Syntax

- r = gamrnd(a, b)
- r = gamrnd(a, b, sz)
- r = gamrnd(a, b, sz1, ..., szN)

## 📥 Input argument

- a - positive scalar or array: shape parameter.
- b - positive scalar or array: scale parameter.
- sz - scalar, vector, or comma-separated dimensions: output size.

## 📤 Output argument

- r - array: random values.

## 📄 Description

<b>gamrnd</b> generates gamma distributed random values. Scalar parameters are expanded to match array inputs or the requested output size.

## 💡 Example

```matlab
rng(0);
r = gamrnd(2, 3, 2, 3);
```

## 🔗 See also

[gampdf](../../statistics/gampdf.md), [gamcdf](../../statistics/gamcdf.md), [gaminv](../../statistics/gaminv.md), [gamstat](../../statistics/gamstat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
