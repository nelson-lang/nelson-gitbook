# cheby1

Chebyshev type I digital filter design.

## 📝 Syntax

- [B, A] = cheby1(N, Rp, Wn)
- [B, A] = cheby1(N, Rp, Wn, type)
- [Z, P, K] = cheby1(...)

## 📥 Input argument

- N - filter order.
- Rp - passband ripple in dB.
- Wn - normalized cutoff frequency or frequency pair.
- type - filter type.

## 📤 Output argument

- B, A - transfer function coefficients.
- Z, P, K - zero-pole-gain representation.

## 📄 Description

<b>cheby1</b> designs lowpass, highpass, bandpass, and bandstop Chebyshev type I digital filters.

## 💡 Example

```matlab

[b, a] = cheby1(3, 1, 0.25);

```

## 🔗 See also

[butter](../../signal_processing/butter.md), [cheb1ord](../../signal_processing/cheb1ord.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
