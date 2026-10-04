# cheby2

Chebyshev type II digital filter design.

## 📝 Syntax

- [B, A] = cheby2(N, Rs, Wn)
- [B, A] = cheby2(N, Rs, Wn, type)
- [Z, P, K] = cheby2(...)

## 📥 Input argument

- N - filter order.
- Rs - stopband attenuation in dB.
- Wn - normalized cutoff frequency or frequency pair.
- type - filter type.

## 📤 Output argument

- B, A - transfer function coefficients.
- Z, P, K - zero-pole-gain representation.

## 📄 Description

<b>cheby2</b> designs lowpass, highpass, bandpass, and bandstop Chebyshev type II digital filters.

## 💡 Example

```matlab

[b, a] = cheby2(3, 40, 0.25);

```

## 🔗 See also

[cheby1](../../signal_processing/cheby1.md), [ellip](../../signal_processing/ellip.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
