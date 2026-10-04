# xcov

Cross-covariance of discrete-time signals.

## 📝 Syntax

- C = xcov(X)
- C = xcov(X, Y)
- [C, Lags] = xcov(..., maxlag)
- [C, Lags] = xcov(..., scaleopt)

## 📥 Input argument

- X - input signal.
- Y - optional second input signal.
- maxlag - maximum lag to return.
- scaleopt - scaling option passed to xcorr after mean removal.

## 📤 Output argument

- C - covariance sequence.
- Lags - lag vector.

## 📄 Description

<b>xcov</b> subtracts the mean from each signal and computes the corresponding correlation sequence.

## 💡 Example

```matlab

[c, lags] = xcov([1 2 3], 1, 'biased');

```

## 🔗 See also

[xcorr](../../signal_processing/xcorr.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
