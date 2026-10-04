# butter

Butterworth digital filter design.

## 📝 Syntax

- [B, A] = butter(N, Wn)
- [B, A] = butter(N, Wn, type)
- [Z, P, K] = butter(...)

## 📥 Input argument

- N - filter order.
- Wn - normalized cutoff frequency.
- type - optional filter type.

## 📤 Output argument

- B - numerator coefficients.
- A - denominator coefficients.
- Z, P, K - zero-pole-gain representation.

## 📄 Description

<b>butter</b> designs a Butterworth IIR digital filter.

## 💡 Example

```matlab

[b, a] = butter(2, 0.4);
[h, w] = freqz(b, a, 64);

```

## 🔗 See also

[buttord](../../signal_processing/buttord.md), [freqz](../../signal_processing/freqz.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
