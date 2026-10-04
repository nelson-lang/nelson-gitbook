# isfir

Determine whether a digital filter is FIR.

## 📝 Syntax

- tf = isfir(B, A)

## 📥 Input argument

- B - numerator coefficients.
- A - denominator coefficients.

## 📤 Output argument

- tf - true if the filter is finite impulse response.

## 📄 Description

<b>isfir</b> tests whether the denominator has no recursive part.

## 💡 Example

```matlab

tf = isfir([1 2 3], 1);

```

## 🔗 See also

[filtord](../../signal_processing/filtord.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
