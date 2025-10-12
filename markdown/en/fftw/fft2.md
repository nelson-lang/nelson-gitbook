# fft2

2-D fast Fourier transform.

## Syntax

- Y = fft2(X)
- Y = fft2(X, m, n)

## Input argument

- X - Input array.
- m - Number of transform rows.
- n - Number of transform columns.

## Output argument

- Y - a vector, matrix, N-D array: frequency domain representation.

## Description

<p>
            Y = fft2(X) returns the two-dimensional Fourier transform of X using a Fast Fourier Transform (FFT) algorithm.</p>

<p>Optional arguments m and n may be used specify the number of rows and columns of X to use.</p>

<p>If either of these is larger than the size of X, X is resized and padded with zeros.</p>

<p>If X is a multi-dimensional matrix, each two-dimensional sub-matrix of X is treated separately.</p>

## Example

```matlab
R = fft2(eye(5, 5), 2, 3)
```

## See also

[fftn](../fftw/fftn.md), [fft](../fftw/fft.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
