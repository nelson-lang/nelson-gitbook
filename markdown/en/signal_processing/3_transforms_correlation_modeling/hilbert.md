# hilbert

Analytic signal using the Hilbert transform.

## 📝 Syntax

- Y = hilbert(X)
- Y = hilbert(X, N)

## 📥 Input argument

- X - input signal or matrix.
- N - FFT length along the first non-singleton dimension.

## 📤 Output argument

- Y - analytic signal with negative-frequency bins removed.

## 📄 Description

<b>hilbert</b> constructs the analytic signal along the first non-singleton dimension. For matrices, each column is transformed independently.

## 💡 Example

```matlab

y = hilbert([1 0 0 0]);

```

## 🔗 See also

[fft](../../fftw/fft.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
