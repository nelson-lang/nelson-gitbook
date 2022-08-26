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

  <p><b>Y = fft2(X)</b> returns the two-dimensional Fourier transform of <b>X</b> using a Fast Fourier Transform (FFT) algorithm.</p>
  <p>Optional arguments <b>m</b> and <b>n</b> may be used specify the number of rows and columns of <b>X</b> to use.</p>
  <p>If either of these is larger than the size of <b>X</b>, <b>X</b> is resized and padded with zeros.</p>
  <p>If <b>X</b> is a multi-dimensional matrix, each two-dimensional sub-matrix of <b>X</b> is treated separately.</p>

## Example

```matlab
R = fft2(eye(5, 5), 2, 3)
```

## See also

[fftn](fftn.md), [fft](fft.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
