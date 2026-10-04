# sqrt

Square root.

## 📝 Syntax

- R = sqrt(M)

## 📥 Input argument

- M - a variable

## 📤 Output argument

- R - result of sqrt: square root.

## 📄 Description

<b>sqrt</b> computes the square root.

For real positive numbers:
$$\sqrt{x}$$

For complex numbers <b>z = x + iy</b>:
$$\sqrt{z} = \sqrt{r} e^{i\phi/2}$$

where
$$r = |z| = \sqrt{x^2 + y^2}$$

and
$$\phi = \arg(z) = \text{atan2}(y, x)$$

## 💡 Example

```matlab
x = -3:3;
r = sqrt(x)
```

## 🔗 See also

[log](../../elementary_functions/log.md), [abs](../../elementary_functions/abs.md), [angle](../../elementary_functions/angle.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
