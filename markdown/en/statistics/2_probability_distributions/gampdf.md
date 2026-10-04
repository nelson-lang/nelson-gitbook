# gampdf

Gamma probability density function

## 📝 Syntax

- y = gampdf(x, a)
- y = gampdf(x, a, b)

## 📥 Input argument

- x - real numeric array.
- a - positive shape parameter.
- b - positive scale parameter, default 1.

## 📤 Output argument

- y - probability density values.

## 📄 Description

<b>gampdf</b> computes gamma distribution density values. Scalar inputs are expanded to match array inputs.

## 💡 Example

```matlab
x = [0 0.5 1 2 5];
y = gampdf(x, 2, 3);
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
