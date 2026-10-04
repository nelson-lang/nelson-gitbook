# raylrnd

Rayleigh random numbers

## 📝 Syntax

- r = raylrnd(b)
- r = raylrnd(b, sz)
- r = raylrnd(b, sz1, ..., szN)

## 📥 Input argument

- b - positive scalar or array: scale parameter.
- sz - size vector or size scalars for the output.

## 📤 Output argument

- r - array: random values.

## 📄 Description

<b>raylrnd</b> generates Rayleigh random numbers using Nelson's global random generator.

## 💡 Example

```matlab
rng(0);
r = raylrnd(2, [2 3]);
```

## 🔗 See also

[raylpdf](../../statistics/raylpdf.md), [raylstat](../../statistics/raylstat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
