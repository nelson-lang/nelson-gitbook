# dct

Discrete cosine transform.

## 📝 Syntax

- Y = dct(X)
- Y = dct(X, N)
- Y = dct(X, N, DIM)

## 📥 Input argument

- X - input signal or matrix.
- N - transform length: X is padded with zeros or truncated to length N.
- DIM - dimension to operate along.

## 📤 Output argument

- Y - discrete cosine transform coefficients (DCT-II, orthonormal).

## 📄 Description

<b>dct</b> computes the orthonormal type-II discrete cosine transform along the first non-singleton dimension by default. For matrices, each column is transformed independently.

## 💡 Example

```matlab

y = dct([1 2 3 4]);
x = idct(y);

```

## 🔗 See also

[idct](../../signal_processing/idct.md), [fft](../../fftw/fft.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
