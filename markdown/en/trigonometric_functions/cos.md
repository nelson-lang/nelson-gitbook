# cos

Computes the cosine in radians for each element of x.

## 📝 Syntax

- res = cos(x)

## 📥 Input argument

- x - a numeric value

## 📤 Output argument

- res - a numeric value

## 📄 Description

<b>cos</b> computes the cosine in radians for each element of <b>x</b>.

The cosine function is defined as:
$$\cos(x) = \frac{e^{ix} + e^{-ix}}{2}$$

For real arguments, it represents the x-coordinate on the unit circle.

## 💡 Example

```matlab
A = eye(3, 3);
res = cos(A)
```

## 🔗 See also

[acos](../trigonometric_functions/acos.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
