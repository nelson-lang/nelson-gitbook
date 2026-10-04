# fftfilt

FIR filtering helper.

## 📝 Syntax

- Y = fftfilt(B, X)

## 📥 Input argument

- B - FIR coefficients.
- X - input signal or matrix.

## 📤 Output argument

- Y - filtered signal.

## 📄 Description

<b>fftfilt</b> returns the first length(X) samples of convolution between B and X. Matrix inputs are filtered column by column.

## 💡 Example

```matlab

y = fftfilt([1 1], [1 2 3]);

```

## 🔗 See also

[filter](../../elementary_functions/filter.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
