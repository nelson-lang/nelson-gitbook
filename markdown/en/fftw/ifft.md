# ifft

Inverse Fast Fourier transform.

## 📝 Syntax

- Y = ifft(X)
- Y = ifft(X, n)
- Y = ifft(X, n, dim)

## 📥 Input argument

- X - a vector, matrix or N-D array (double, single, integer, logical).
- n - transform length: a non negative integer scalar or [] (default).
- dim - dimension: a positive integer scalar.

## 📤 Output argument

- Y - a vector, matrix, N-D array: frequency domain representation.

## 📄 Description

<b>ifft(X)</b> computes the inverse discrete Fourier transform of X using a Fast Fourier Transform (FFT) algorithm based on FFTW library.

## 💡 Example

```matlab
A = [1:10]
Y = fft(A)
R = ifft(Y)
```

## 🔗 See also

[fft](../fftw/fft.md), [fftw](../fftw/fftw.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
