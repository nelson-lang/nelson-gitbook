# gammainc

Incomplete gamma function.

## 📝 Syntax

- Y = gammainc(X, A)
- Y = gammainc(X, A, tail)

## 📥 Input argument

- X - nonnegative real values.
- A - nonnegative real values.
- tail - 'lower' (default) or 'upper'.

## 📤 Output argument

- Y - regularized incomplete gamma function.

## 📄 Description

<b>gammainc</b> returns the lower regularized incomplete gamma function evaluated at the elements of X and A. gammainc(X, A, 'upper') returns the upper (complementary) regularized incomplete gamma function. X and A must be the same size, or either can be a scalar.

## 💡 Example

```matlab
Y = gammainc(0.5, 2)
```

## 🔗 See also

[gamma](../special_functions/gamma.md), [gammaln](../special_functions/gammaln.md), [betainc](../special_functions/betainc.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
