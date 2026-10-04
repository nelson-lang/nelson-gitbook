# poissinv

Poisson inverse cumulative distribution function

## 📝 Syntax

- x = poissinv(y, lambda)

## 📥 Input argument

- y - real numeric array of probabilities.
- lambda - nonnegative rate parameter.

## 📤 Output argument

- x - smallest integer values whose cumulative probabilities are at least y.

## 📄 Description

<b>poissinv</b> computes inverse lower-tail Poisson probabilities.

## 💡 Example

```matlab
y = [0.025 0.5 0.975];
x = poissinv(y, 4);
```

## 🔗 See also

[poisscdf](../../statistics/poisscdf.md), [poisspdf](../../statistics/poisspdf.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
