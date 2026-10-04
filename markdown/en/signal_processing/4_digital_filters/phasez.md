# phasez

Phase response of a digital filter.

## 📝 Syntax

- [P, W] = phasez(B, A)
- [P, W] = phasez(B, A, N)
- [P, F] = phasez(B, A, N, Fs)
- [P, W] = phasez(B, A, N, 'whole')
- [P, F] = phasez(B, A, N, Fs, 'whole')

## 📥 Input argument

- B - numerator coefficients.
- A - denominator coefficients.
- N - number of frequency samples.
- Fs - sampling frequency.

## 📤 Output argument

- P - unwrapped phase response.
- W, F - frequency vector.

## 📄 Description

<b>phasez</b> computes the unwrapped phase of the frequency response returned by freqz.

## 💡 Example

```matlab

[p, w] = phasez([1 1], 1, 16);

```

## 🔗 See also

[freqz](../../signal_processing/freqz.md), [grpdelay](../../signal_processing/grpdelay.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
