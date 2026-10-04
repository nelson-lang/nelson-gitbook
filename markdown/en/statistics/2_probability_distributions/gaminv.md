# gaminv

Gamma inverse cumulative distribution function

## 📝 Syntax

- x = gaminv(p, a)
- x = gaminv(p, a, b)

## 📥 Input argument

- p - real numeric array of probabilities.
- a - positive shape parameter.
- b - positive scale parameter, default 1.

## 📤 Output argument

- x - inverse lower-tail gamma values.

## 📄 Description

<b>gaminv</b> computes inverse lower-tail gamma probabilities.

## 💡 Example

```matlab
p = [0.025 0.5 0.975];
x = gaminv(p, 2, 3);
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
