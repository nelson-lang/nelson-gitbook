# ellip

Elliptic digital filter design.

## 📝 Syntax

- [B, A] = ellip(N, Rp, Rs, Wn)
- [B, A] = ellip(N, Rp, Rs, Wn, type)
- [Z, P, K] = ellip(...)

## 📥 Input argument

- N - filter order.
- Rp - passband ripple in dB.
- Rs - stopband attenuation in dB.
- Wn - normalized cutoff frequency or frequency pair.

## 📤 Output argument

- B, A - transfer function coefficients.
- Z, P, K - zero-pole-gain representation.

## 📄 Description


<b>ellip</b> designs lowpass, highpass, bandpass, and bandstop elliptic digital filters.

## 💡 Example



```matlab

[b, a] = ellip(3, 1, 40, 0.25);

```


## 🔗 See also

[ellipord](../../signal_processing/4_digital_filters/ellipord.md), [cheby2](../../signal_processing/4_digital_filters/cheby2.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
