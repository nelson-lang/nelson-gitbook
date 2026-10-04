# freqz

Frequency response of a digital filter.

## 📝 Syntax

- [H, W] = freqz(B, A)
- [H, W] = freqz(B, A, N)
- [H, W] = freqz(B, A, N, 'whole')
- [H, F] = freqz(B, A, N, Fs)

## 📥 Input argument

- B - numerator coefficients.
- A - denominator coefficients.
- N - number of frequency samples or vector of frequencies.
- Fs - sample rate.

## 📤 Output argument

- H - complex frequency response.
- W - frequencies in radians per sample.
- F - frequencies in cycles per unit time when Fs is supplied.

## 📄 Description

<b>freqz</b> evaluates the transfer function defined by B and A on the unit circle.

## 💡 Example

```matlab

[h, w] = freqz([1 1], 1, 8);

```

## 🔗 See also

[phasez](../../signal_processing/phasez.md), [grpdelay](../../signal_processing/grpdelay.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
