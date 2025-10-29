# cospi

Computes cos(X \* pi) accurately.

## 📝 Syntax

- res = cospi(x)

## 📥 Input argument

- x - a numeric value

## 📤 Output argument

- res - a numeric value

## 📄 Description

<b>res = cospi(x)</b> computes <b>cos(x \* pi)</b> accurately.

For integers, <b>cospi(x)</b> is +1 or -1.

For odd integers, <b>cospi(x / 2)</b> is exactly zero.

## 💡 Example

```matlab
x = [0, 1/2, 1, 3/2, 2];
r = cos(x * pi)
res = cospi(x)
```

## 🔗 See also

[cos](../trigonometric_functions/cos.md), [sinpi](../trigonometric_functions/sinpi.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
