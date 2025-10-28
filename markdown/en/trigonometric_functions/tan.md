# tan

Computes the tangent in radians for each element of x.

## 📝 Syntax

- res = tan(x)

## 📥 Input argument

- x - a numeric value

## 📤 Output argument

- res - a numeric value

## 📄 Description

<b>tan</b> computes the tangent in radians for each element of <b>x</b>.

The tangent function is defined as:
$$\tan(x) = \frac{\sin(x)}{\cos(x)} = \frac{e^{ix} - e^{-ix}}{i(e^{ix} + e^{-ix})}$$

It has vertical asymptotes at
$$x = \frac{\pi}{2} + n\pi$$

for integer <b>n</b>.

## 💡 Example

```matlab
A = eye(3, 3);
res = tan(A)
```

## 🔗 See also

[atan](../trigonometric_functions/atan.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
