# rcond

Inverse condition number.

## 📝 Syntax

- res = rcond(x)

## 📥 Input argument

- x - a numeric value: scalar or square matrix (double or single)

## 📤 Output argument

- res - a numeric value: a scalar.

## 📄 Description

<b>rcond(x)</b> computes the reciprocal of the condition of x in the 1-norm.

## 💡 Example

```matlab
X = rand(10, 10);
r = rcond(X);
```

## 🔗 See also

[inv](../linear_algebra/inv.md), [cond](../linear_algebra/cond.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
