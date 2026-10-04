# grpdelay

Group delay of a digital filter.

## 📝 Syntax

- [Gd, W] = grpdelay(B, A)
- [Gd, W] = grpdelay(B, A, N)
- [Gd, F] = grpdelay(B, A, N, Fs)
- [Gd, W] = grpdelay(B, A, N, 'whole')
- [Gd, F] = grpdelay(B, A, N, 'whole', Fs)

## 📥 Input argument

- B - numerator coefficients.
- A - denominator coefficients.
- N - number of frequency samples.
- Fs - sampling frequency.

## 📤 Output argument

- Gd - group delay.
- W, F - frequency vector.

## 📄 Description

<b>grpdelay</b> computes group delay from the transfer function frequency derivative.

## 💡 Example

```matlab

[gd, w] = grpdelay([1 1], 1, 16);

```

## 🔗 See also

[phasez](../../signal_processing/phasez.md), [freqz](../../signal_processing/freqz.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
