# unifpdf

Continuous uniform probability density function

## 📝 Syntax

- y = unifpdf(x)
- y = unifpdf(x, a, b)

## 📥 Input argument

- x - real numeric array.
- a - lower endpoint, default 0.
- b - upper endpoint, default 1.

## 📤 Output argument

- y - probability density values.

## 📄 Description

<b>unifpdf</b> computes continuous uniform density values. Scalar inputs are expanded to match array inputs.

## 💡 Example

```matlab
x = 0:0.25:1;
y = unifpdf(x);
```

## 🔗 See also

[unifcdf](../../statistics/unifcdf.md), [unifinv](../../statistics/unifinv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
