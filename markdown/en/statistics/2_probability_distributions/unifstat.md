# unifstat

Continuous uniform mean and variance

## 📝 Syntax

- [m, v] = unifstat(a, b)

## 📥 Input argument

- a - real scalar or array: lower endpoint.
- b - real scalar or array: upper endpoint.

## 📤 Output argument

- m - array: means.
- v - array: variances.

## 📄 Description

<b>unifstat</b> returns the element-wise mean and variance of continuous uniform distributions.

Scalar endpoints are expanded to match array endpoints. Invalid intervals produce NaN values.

## 💡 Example

```matlab
[m, v] = unifstat(0, 1);
a = 1:6;
b = 2 * a;
[m2, v2] = unifstat(a, b);
```

## 🔗 See also

[unifpdf](../../statistics/unifpdf.md), [unifcdf](../../statistics/unifcdf.md), [unifinv](../../statistics/unifinv.md), [unifrnd](../../statistics/unifrnd.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
