# ifft2

2-D inverse fast Fourier transform.

## 📝 Syntax

- Y = ifft2(X)
- Y = ifft2(X, m, n)

## 📥 Input argument

- X - Input array.
- m - Number of transform rows.
- n - Number of transform columns.

## 📤 Output argument

- Y - Inverse transform result.

## 📄 Description

<b>ifft2</b> returns the two-dimensional inverse Fourier transform of <b>X</b>.

## 💡 Example

```matlab
X = magic(3); Y = ifft2(fft2(X))
```

## 🔗 See also

[fft2](../fftw/fft2.md), [ifftn](../fftw/ifftn.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
