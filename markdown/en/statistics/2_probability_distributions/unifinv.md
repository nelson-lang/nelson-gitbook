# unifinv

Continuous uniform inverse cumulative distribution function

## 📝 Syntax

- x = unifinv(p)
- x = unifinv(p, a, b)

## 📥 Input argument

- p - real numeric array of probabilities.
- a - lower endpoint, default 0.
- b - upper endpoint, default 1.

## 📤 Output argument

- x - inverse lower-tail continuous uniform values.

## 📄 Description

<b>unifinv</b> computes inverse lower-tail continuous uniform probabilities.

## 💡 Example

```matlab
p = [0.25 0.5 0.75];
x = unifinv(p, -1, 1);
```

## 🔗 See also

[unifcdf](../../statistics/unifcdf.md), [unifpdf](../../statistics/unifpdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
