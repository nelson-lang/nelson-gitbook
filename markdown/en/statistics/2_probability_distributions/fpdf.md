# fpdf

F probability density function

## 📝 Syntax

- y = fpdf(x, v1, v2)

## 📥 Input argument

- x - real numeric array: values where the distribution is evaluated.
- v1 - positive real numeric array or scalar: numerator degrees of freedom.
- v2 - positive real numeric array or scalar: denominator degrees of freedom.

## 📤 Output argument

- y - probability density values.

## 📄 Description

<b>fpdf</b> computes F distribution probability density values. Scalar inputs are expanded to match array inputs.

## 💡 Example

```matlab
x = [0.5 1 2 5];
y = fpdf(x, 5, 20);
```

## 🔗 See also

[fcdf](../../statistics/fcdf.md), [finv](../../statistics/finv.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
