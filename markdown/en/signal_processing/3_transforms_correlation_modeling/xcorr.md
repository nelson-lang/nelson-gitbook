# xcorr

Cross-correlation of discrete-time signals.

## 📝 Syntax

- C = xcorr(X)
- C = xcorr(X, Y)
- [C, Lags] = xcorr(..., maxlag)
- [C, Lags] = xcorr(..., scaleopt)

## 📥 Input argument

- X - input signal.
- Y - optional second input signal.
- maxlag - maximum lag to return.
- scaleopt - scaling option: 'none', 'biased', 'unbiased', 'coeff', or 'normalized'.

## 📤 Output argument

- C - correlation sequence.
- Lags - lag vector.

## 📄 Description

<b>xcorr</b> computes auto-correlation or cross-correlation for one-dimensional signals.

## 💡 Example

```matlab

[c, lags] = xcorr([1 2 3], 1, 'biased');

```

## 🔗 See also

[xcov](../../signal_processing/xcov.md), [xcorr2](../../signal_processing/xcorr2.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
