# raylstat

Rayleigh mean and variance

## 📝 Syntax

- [m, v] = raylstat(b)

## 📥 Input argument

- b - positive scalar or array: scale parameter.

## 📤 Output argument

- m - array: means.
- v - array: variances.

## 📄 Description

<b>raylstat</b> returns the element-wise mean and variance of Rayleigh distributions.

## 💡 Example

```matlab
[m, v] = raylstat(2);
```

## 🔗 See also

[raylpdf](../../statistics/raylpdf.md), [raylrnd](../../statistics/raylrnd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
