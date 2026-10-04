# fir2

Frequency sampling FIR filter design.

## 📝 Syntax

- B = fir2(N, F, M)
- B = fir2(N, F, M, window)

## 📥 Input argument

- N - filter order.
- F - normalized frequency breakpoints.
- M - desired magnitudes.
- window - window vector.

## 📤 Output argument

- B - FIR numerator coefficients.

## 📄 Description

<b>fir2</b> designs a linear-phase FIR filter from an arbitrary frequency response.

## 💡 Example

```matlab

b = fir2(16, [0 0.4 0.6 1], [1 1 0 0]);

```

## 🔗 See also

[fir1](../../signal_processing/fir1.md), [freqz](../../signal_processing/freqz.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
