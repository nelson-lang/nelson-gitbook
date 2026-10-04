# impz

Impulse response of a digital filter.

## 📝 Syntax

- [H, T] = impz(B, A)
- [H, T] = impz(B, A, N)
- [H, T] = impz(B, A, N, Fs)

## 📥 Input argument

- B - numerator coefficients.
- A - denominator coefficients.
- N - number of samples.
- Fs - sample rate.

## 📤 Output argument

- H - impulse response.
- T - sample or time vector.

## 📄 Description

<b>impz</b> filters a unit impulse through the filter defined by B and A.

## 💡 Example

```matlab

[h, t] = impz([1 1], 1, 4);

```

## 🔗 See also

[stepz](../../signal_processing/stepz.md), [filter](../../elementary_functions/filter.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
