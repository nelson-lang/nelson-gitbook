# fftn

N-Dimensions fast Fourier transform.

## Syntax

- Y = fftn(X)
- Y = fftn(X, sz)

## Input argument

- X - a vector, matrix or N-D array (double, single, integer, logical).
- sz - a multidimensional array

## Output argument

- Y - a vector, matrix, N-D array: frequency domain representation.

## Description

<p>
            Y = fftn(X, sz) pads X with zeros, or truncates X, to create a multidimensional array of size sz before performing the transform.</p>

<p>The size of the result Y is sz.</p>

<p>
                Y = fftn(X) performs the N-dimensional fast Fourier transform.</p>

<p>The result Y is the same size as X.</p>

## Example

```matlab
f = zeros(5, 5);
f(1:5,4:5) = 1;
Y = ifftn(fftn(f));
```

## See also

[ifftn](../fftw/ifftn.md), [fft](../fftw/fft.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
