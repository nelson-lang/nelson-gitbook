# filtord

Digital filter order.

## 📝 Syntax

- N = filtord(B, A)

## 📥 Input argument

- B - numerator coefficients.
- A - denominator coefficients.

## 📤 Output argument

- N - filter order.

## 📄 Description

<b>filtord</b> returns the order implied by nonzero numerator and denominator coefficients.

## 💡 Example

```matlab

n = filtord([1 0 0], [1 -0.5]);

```

## 🔗 See also

[isfir](../../signal_processing/isfir.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
