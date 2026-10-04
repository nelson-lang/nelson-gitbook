# sgolayfilt

Savitzky-Golay smoothing filter.

## 📝 Syntax

- Y = sgolayfilt(X, K, F)
- Y = sgolayfilt(X, K, F, W)
- Y = sgolayfilt(X, K, F, W, DIM)

## 📥 Input argument

- X - input signal.
- K - polynomial order.
- F - frame length.
- W - positive weighting vector. Use [] for default weights.
- DIM - dimension to filter along.

## 📤 Output argument

- Y - smoothed signal.

## 📄 Description

<b>sgolayfilt</b> smooths data using Savitzky-Golay FIR coefficients.

## 💡 Example

```matlab

y = sgolayfilt([1 2 3 2 1], 2, 5);

```

## 🔗 See also

[sgolay](../../signal_processing/sgolay.md), [medfilt1](../../signal_processing/medfilt1.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
